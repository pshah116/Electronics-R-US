## Electronics-R-US Analysis

![2025-07-08_11h51_31](https://github.com/user-attachments/assets/f4e917d5-9d6d-43de-beaa-8d72d4933764)

## Project Background
Electronics R US , a digital electronics retailer launched in 2019, has rapidly grown its footprint across international markets. With a focus on online and mobile channels, the company has seen strong performance from key product lines, particularly those from Apple, Samsung, and ThinkPad. This analysis was to support cross-functional teams—including sales, marketing, and finance and provide meaningful insights. The objective was to provide a clear view of company performance, helping each team refine their workflows and strengthen the customer experience across global markets.

## Key Stakeholder Questions 
•	What were the monthly and yearly number of sales throughout 2019 and 2022? What about AOV and total sales in dollars? How did this differ by product and geography?

•	Which months and products performed the best / worst? Is there seasonality?

•	Should we keep using the loyalty program?

•	What was the monthly number of sales and yearly AOV for people in the loyalty program vs. those not in the loyalty program?

•	Has there been any new customer growth for loyalty members?

•	What are the refund rates for different products?

•	How does it compare between loyal and non-loyal customers?

•	How are the sales across regions? 

•	Are the regions with the highest spike the same regions responsible for the highest sales dollars?

## ERD 
The database consists of four tables: orders, customers, geo_lookup, and order_status, with 108,127 rows of record
![2025-07-08_14h55_01](https://github.com/user-attachments/assets/35305e83-8b7f-433e-8390-dfeb602e5e28)


## Executive Summary

• **From 2019 to 2022, total sales exceeded $28.1M**, with **108K orders** and an **average order value (AOV) of $260.06**. Average yearly revenue was **$7M**, and average yearly orders were **27K**. **2020 was the highest performing year in revenue and AOV**, generating **$10M+ in sales** and an **AOV of $300.16**.

• **2021 recorded the highest order volume with 35,858**.

• **In 2020, sales revenue grew by 162% YoY**, alongside a **31% AOV increase** and a **101% surge in order count**. **August 2020 achieved the best YoY monthly performance with a 214% revenue increase**.

• **Refund rates peaked at 44% in 2020**, but declined significantly to **17.15% in 2021** and **0% in 2022**.

• Regional performance was led by **North America (NA) with $14.5M+ in total sales**. EMEA followed with **~$8.2M**, and **together these regions drove over 75% of global revenue**.

• **After 2020 the loyalty program showed a consistent increase in new members in 2021 and 2022 beating non-loyalty members and also providing a higher AOV,revenue and order count.

• **Top 3 selling products** were the *27" 4K Gaming Monitor*, *Apple AirPods Headphones*, and *MacBook Air Laptop*

## Deep Dive Insights
**Sales Trends:**

•	Across all years, there is a strong **seasonal peak in Q4** with **November & December consistently outperforming** in sales, following a sales dip in October, this is possibly attributed to the holiday shopping seasonality (Black Friday and year-end promotions).


•	**2020 experienced the highest growth in every month for all major KPI's such as total sales, order count, and AOV.** This is likely influenced by pandemic-driven e-commerce surges. Notably, **April-August 2020 each had >200% YoY monthly sales growth**, suggesting a strong mid-year acceleration.

•	**2022 shows significant declines** in all KPIs, especially in Q4 showing **YoY total sales dropping >70%**, indicating either market saturation, economic slowdown, or reduced promotional effectiveness.

![2025-07-08_12h05_47](https://github.com/user-attachments/assets/41c74ad7-8b02-4081-a9eb-7da6d0fcbc9b)

![2025-07-08_12h06_13](https://github.com/user-attachments/assets/0ff12818-7f6b-42ab-a014-3ae320d39f13)

## Product Performance
•	**The 27 inch 4K Gaming Monitor, Apple Airpods Headphones, and MacBook Air Laptop together account for >84% of total revenue**, highlighting their critical importance in the product portfolio.

•*Apple iPhone* and *Bose SoundSport Headphones* contributed to **<1% of total revenue**, both products underperformed despite Bose having an **AOV $35 lower** than its competitor, *Apple AirPods*. In contrast, *Apple AirPods* and the *MacBook Air Laptop* were **top sellers**, highlighting that **lower pricing** and **brand recognition** don’t always lead to **higher sales**

•	**The top 4 products all saw a sharp positive spike in 2020 YoY growth**, with MacBook Air Laptop showing the strongest jump at **384%** followed by ThinkPad Laptop at **222%** likely driven by remote work and e-learning needs during the pandemic. 

• **In 2021 both products had the steepest declines** with **ThinkPad Laptop down 20%** and **MacBook Air Laptop down 35%** indicating possible market saturation or reduced demand.
![2025-07-08_12h09_57](https://github.com/user-attachments/assets/f978c0d6-f53c-4b69-adcf-67a0dc246ea1)

![2025-07-08_12h14_23](https://github.com/user-attachments/assets/5cb63eda-f0de-4ce9-b603-9fefe65b8b2a)

## Loyalty Program
• **From 2019–2022, loyalty members placed a total of 45,693 orders vs 62,431 by non-members**. However, in **2021 and 2022 loyalty members placed 22% more total orders** than non-members, highlighting a shift in engagement.

• **Loyalty members contributed over $10M in total revenue**, while **non-loyalty members generated over $17M**. However, in **2021 and 2022 loyalty members outperformed non-members generating over $1.6M more in revenue** during that period.

• **In 2022, loyalty members had a higher AOV ($244.79) vs. non-loyalty members ($214.11)**, despite non-loyalty peaking at **$345.28 in 2020**. **Loyalty AOV rose steadily from 2019–2021, with a slight dip in 2022**, but still outperformed non-loyalty members. **Non-loyalty members** have **consistently declined in AOV since 2020**.

• **Loyalty sign-ups surged from ~2,000 in 2019 to ~17,000 in 2021**, outpacing non-loyalty growth that year. While **2022 saw slower growth**, loyalty still brought in more new customers.

![2025-07-08_12h37_58](https://github.com/user-attachments/assets/44d98007-7e48-4d56-9dd3-c3155de3e374)

![2025-07-08_12h38_17](https://github.com/user-attachments/assets/5174d84f-a82a-4173-b76a-ad244954a6da)

![2025-07-08_12h38_38](https://github.com/user-attachments/assets/f7357d36-e40c-44b7-826d-f119d55cbf62)

## Regional Analysis
• **North America was the most dominant overall region in total sales, contributing to over $14M in total sales** and **generating over 91% of its regional sales from the U.S.** alone. Despite a YoY dip in 2021 and 2022, its overall **market strength consistently remained above 50%** total sales revenue from 2019-2022. 

•**North America and EMEA had the highest sales by region** however **APAC had the highest compound growth rate** across the 4-year span (In 2020 they **outperformed every region with a 213% YoY growth**), showing early explosive expansion.

•The **27-inch 4K Gaming Monitor was a global bestseller**, leading in **16 out of the 21 countries**, making it a key product to continue pushing in both mature and emerging markets.
![2025-07-08_12h56_02](https://github.com/user-attachments/assets/ceaad4e0-4088-4a3a-9c2a-0daa75125b7c)

![2025-07-08_12h56_27](https://github.com/user-attachments/assets/774a3014-a83a-458d-822a-beb5eed69686)

![2025-07-08_12h54_24](https://github.com/user-attachments/assets/dc65616b-8c70-4f5c-90e6-7203156d6453)

## Refund Rates
•**A total of 5,370 total refunds were processed between 2019 and 2022, and >83% of all refunds came from North America and EMEA**.  This aligns with their high sales volume, as greater revenue often leads to a higher number of returns.

•**From 2019 to 2021, Apple products (predominatly AirPods and MacBook Air Laptop) had the highest refund rates** peaking at **28%** and **15%**, in 2020. **Apple refunds accounted for a major portion of total refunds in those years with >50% of all refunds per year**. Refund rates significantly dropped across all products in 2021 and reached **0% refund rate in 2022**.

•Loyalty members averaged **76 more refunds per year** than non-loyalty members. In 2022, loyalty refunds were **6.5% higher**, indicating a need to monitor return trends among engaged members 
![2025-07-09_12h57_44](https://github.com/user-attachments/assets/f25caaa5-f70a-481d-b84e-f87df9e02415)


![2025-07-08_13h09_33](https://github.com/user-attachments/assets/9e659a12-b610-4340-bea3-e0a16c186d66)

![2025-07-08_13h09_51](https://github.com/user-attachments/assets/080b5e46-ac26-4f30-aeeb-8f759219dea2)

## Recommendations
**Product Outreach:** 

• Diversify the product mix — over **85% of revenue** comes from just three products (Gaming Monitor, MacBook Air, AirPods).

• Reposition or discontinue low-performers like **Bose SoundSport Headphones**, which made up only 0.01% of sales over 4 years.

**Global Impact:**

•Focus investment in **North America and EMEA** (>75% of total sales), while expanding efforts in **LATAM and APAC** through localized campaigns.

•Upsell premium products in **high AOV markets like Australia ($392), Denmark ($353)**, and **Israel ($302)**.

**Loyalty Program Performance:**

• Continue investing in loyalty members they drove stronger results in 2021–2022 across orders, revenue, and AOV.

• Prioritize direct and email marketing channels, as they have driven the highest number of signups and demonstrate strong conversion rates:
--Direct Marketing Channel **signup rate 40%** with **23.5K** signups 
--Email Marketing Channel **signup rate 59%** with **8K** signups

**Refund monitoring:**

•Investigate the high return rates for **MacBook Air Laptop** and **Apple AirPods Headphones** from 2020 using feedback and return reason data.

•Enhance post-purchase experience and durability to sustain **0% refund rate** achieved in 2022.


