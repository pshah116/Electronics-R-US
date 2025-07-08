--1) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

  WITH quarterly_trends AS (
select date_trunc(orders.purchase_ts, quarter) as purchase_quarter,
  count(distinct orders.id) as order_count,
  round(sum(orders.usd_price),2) as total_sales,
  round(avg(orders.usd_price),2) as aov
from core.orders
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup 
  on customers.country_code = geo_lookup.country
where lower(orders.product_name) like '%macbook%'
	and region = 'NA'
group by 1
order by 1 desc
)


SELECT
  ROUND(AVG(order_count), 2) AS average_quarterly_orders,
  ROUND(AVG(total_sales), 2) AS average_quarterly_sales,
  ROUND(AVG(aov), 2) AS average_quarterly_average_order_value
FROM quarterly_trends
;

-- 2) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver expressing time to deliver in weeks

SELECT
  geo_lookup.region,
  ROUND(AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, week)),2) AS weeks_to_deliver,
FROM core.orders
LEFT JOIN core.order_status
ON orders.id = order_status.order_id
LEFT JOIN core.customers
ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
ON customers.country_code = geo_lookup.country
WHERE (EXTRACT(year FROM orders.purchase_ts) = 2022 AND lower(orders.purchase_platform) = 'website') OR (EXTRACT(year FROM orders.purchase_ts) = 2021 AND lower(orders.product_name) LIKE '%samsung%') AND geo_lookup.region IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1
;


--3) What was the refund rate and refund count for each product per year?

SELECT
  EXTRACT(year FROM orders.purchase_ts) AS purchase_year,
  case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
  SUM(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count,
  ROUND(AVG(CASE WHEN order_status.refund_ts IS NOT NULL THEN 1 ELSE 0 END),2) AS refund_rate
FROM core.orders
LEFT JOIN core.order_status
ON orders.id = order_status.order_id
GROUP BY 1, 2
Order by 3 desc;


--4) Within each region, what is the most popular product?

with sales_by_product as (
  select region,
    case when product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else product_name end as product_clean,
    count(distinct orders.id) as total_orders
  from core.orders
  left join core.customers
    on orders.customer_id = customers.id
  left join core.geo_lookup
    on geo_lookup.country = customers.country_code
  group by 1,2),

ranked_orders as (
  select *,
    row_number() over (partition by region order by total_orders desc) as order_ranking
  from sales_by_product
  order by 4 asc)

select *
from ranked_orders 
where order_ranking = 1;


--5)  How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers?

SELECT
  orders.purchase_platform,
  CASE WHEN customers.loyalty_program = 1 THEN 'Loyalty' ELSE 'Non-Loyalty' END AS loyalty_status,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, day)),1) AS avg_days_to_order,
  COUNT(*) AS order_count
FROM core.customers
LEFT JOIN core.orders
ON orders.customer_id = customers.id
GROUP BY 1,2
;


--6) Which marketing channel has the highest average signup rate for the loyalty program, and how does this compare to the channel that has the highest number of loyalty program participants?
SELECT
  marketing_channel,
  SUM(loyalty_program) AS loyalty_count,
  ROUND(AVG(loyalty_program)*100, 2) AS signup_rate
FROM core.customers
GROUP BY 1
ORDER BY 3 DESC
;
