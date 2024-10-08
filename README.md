# **AtliQ Hardware - SQL Insights Project**

**A SQL-based analysis project for deriving ad-hoc insights to aid smart, data-informed decisions**

---

## **Problem Statement**

AtliQ Hardware, a leading computer hardware producer in India, has expanded globally but faces challenges in making quick and smart data-driven decisions. The management observed that the current analytics infrastructure does not provide sufficient insights. This project focuses on using a MySQL database to derive **ad-hoc** insights that can be presented to the management to assist in data-informed decision-making.

## **Objective**

- **Goal**: Analyze the given data using MySQL and gain insights to assist AtliQ Hardware in decision-making.
- **Tools**: MySQL for database queries and Excel for visualization.

---

## **Key Learnings**

Through this project, the following MySQL concepts and tools were reinforced:

- **Joins**
- **CTEs (Common Table Expressions)**
- **Subqueries**
- **Window Functions**
- **String, Numeric, and Date Functions**
- **Views**
- **Stored Procedures**
- **User-Defined Functions (UDFs)**
- **Temporary Tables**
- **Entity-Relationship Diagram (ERD)**

---

## **Project Execution**

1. **Data Import**: CSV files were imported into the MySQL database.
2. **SQL Queries**: Analysis was performed using SQL queries to retrieve the required insights.
3. **Data Export**: Results from the queries were exported for further analysis.
4. **Visualization**: Key insights were visualized using Excel for better representation.

---

## **Tools Used**

- **MySQL** for database management and querying.
- **Microsoft Excel** for visualization of insights.

---

## **Database Tables Overview**

<details>
<summary>Click to expand</summary>

The `atliq_hardware_db` database comprises the following key tables:

### **1. `dim_customer`**
Contains customer-related data, including:
- **customer_code**: Unique customer identifier.
- **customer**: Customer name.
- **platform**: Sales channel (e.g., "E-Commerce", "Brick & Mortar").
- **channel**: Retail, Direct, or Distributor sales channels.
- **market**: Customer's country.
- **region**: Geographic region (APAC, EU, NA, LATAM).
- **sub_zone**: Further breakdown of regions (India, ANZ, SE, etc.).

### **2. `dim_product`**
Contains product-related data, including:
- **product_code**: Unique product identifier.
- **division**: Product group (P&A, N&S, PC).
- **segment**: Further breakdown of product types (e.g., Notebook, Desktop).
- **product**: Product name.
- **variant**: Product version (e.g., Standard, Plus, Premium).

### **3. `fact_gross_price`**
Stores gross pricing details:
- **product_code**: Unique product identifier.
- **fiscal_year**: Fiscal year the product was sold.
- **gross_price**: Original selling price before deductions.

### **4. `fact_manufacturing_cost`**
Contains manufacturing cost data:
- **product_code**: Unique product identifier.
- **cost_year**: Year the product was manufactured.
- **manufacturing_cost**: Total cost to manufacture the product.

### **5. `fact_pre_invoice_deductions`**
Tracks pre-invoice deduction data:
- **customer_code**: Unique customer identifier.
- **fiscal_year**: Year of sale.
- **pre_invoice_discount_pct**: Pre-invoice discount percentage.

### **6. `fact_sales_monthly`**
Contains monthly sales data:
- **date**: Date of sale (monthly format for FY2020-2021).
- **product_code**: Unique product identifier.
- **customer_code**: Unique customer identifier.
- **sold_quantity**: Units sold.
- **fiscal_year**: Year of sale.

</details>

---

## **Project Insights**

### **1. Product Diversity Trends**

- **Insight**: Product diversity increased from FY2020 to FY2021.
- **Key Segments**: The Notebook and Accessories segments show the most diverse range of products.

### **2. Sales Performance FY2021**

- **Insight**: FY2021 recorded significant sales growth.
- **Channels**: Retailer channels account for a large portion of sales.

### **3. Popular Products**

- **Insight**: Products like **AQ Pen Drive DRC variants**, **AQ Maxima Ms variants**, and **AQ Digit variants** are highly popular among customers.

---

## **Ad-Hoc SQL Insights**

<details>
<summary>Click to expand</summary>

This section showcases various ad-hoc requests from AtliQ Hardware's management and the insights derived from MySQL queries.

### **Request 1**:  
**Which markets does the customer "Atliq Exclusive" operate in within the APAC region?**  
- **Result**: "Atliq Exclusive" operates in the following APAC markets:  
  Australia, Bangladesh, India, Indonesia, Japan, New Zealand, Philippines, and South Korea.

### **Request 2**:  
**Percentage of unique product increase in 2021 vs 2020?**  
- **Result**: A **36.33% increase** in unique products, from 245 in 2020 to 334 in 2021.

### **Request 3**:  
**Unique product counts for each segment, sorted in descending order?**  
- **Result**:  
  - Notebook: 129 unique products  
  - Accessories: 116 unique products  
  - Peripherals: 84 unique products  
  - Desktop: 32 unique products  
  - Storage: 27 unique products  
  - Networking: 9 unique products

### **Request 4**:  
**Which segment had the highest increase in unique products from 2020 to 2021?**  
- **Result**: The **Accessories** segment saw the highest increase with 16 more unique products in 2021.

### **Request 5**:  
**Highest and lowest manufacturing costs by product?**  
- **Result**:  
  - **Highest**: **Q HOME Allin1 Gen 2** (Desktop segment) at **$240.54**  
  - **Lowest**: **AQ Master Wired x1 Ms** (Accessories segment) at **$0.89**

### **Request 6**:  
**Top 5 customers who received the highest average pre-invoice discounts in FY2021 (Indian market)?**  
- **Result**:  
  1. Flipkart - 0.308%  
  2. Viveks - 0.304%  
  3. Croma and Ezone - 0.303%  
  4. Amazon - 0.293%

### **Request 7**:  
**Gross sales for customer “Atliq Exclusive” by month?**  
- **Result**: November 2020 had the highest gross sales of **$20,464,999.10**.

### **Request 8**:  
**Which quarter of 2020 had the maximum total sold quantity?**  
- **Result**: Q1 2020 had the highest total sold quantity of **7,005,619** units.

### **Request 9**:  
**Channel with the most gross sales in FY2021 and its contribution percentage?**  
- **Result**:  
  - **Retailer channel** contributed 73.23% of gross sales, amounting to **$1,219.08 million**.  
  - **Direct**: 15.47%  
  - **Distributor**: 11.30%

### **Request 10**:  
**Top 3 products in each division by sold quantity in FY2021?**  
- **Result**:  
  - **N&S Division**:  
    - 1st: AQ Pen Drive 2 IN 1 (1,159,222 units sold)  
    - 2nd: AQ Pen Drive DRC (1,128,104 units sold)  
    - 3rd: AQ Clx1 (729,696 units sold)  
  
  - **P&A Division**:  
    - 1st: AQ Gamers Ms (683,634 units sold)  
    - 2nd: AQ Master Wireless x1 Ms (682,321 units sold)  
    - 3rd: AQ Gamers Ms (681,531 units sold)  
  
  - **PC Division**:  
    - 1st: AQ Digit (26,012 units sold)  
    - 2nd: AQ Velocity (25,978 units sold)  
    - 3rd: AQ Aspiron (25,963 units sold)

</details>

---

## Strategic Insights

### 1. Product Expansion
The **36.33% growth in unique products**, led by the **Accessories** segment, highlights strong product diversification. Expanding in high-demand categories can drive **future revenue growth**.

### 2. Geographical Focus
**"Atliq Exclusive"** operates across key APAC markets. Focusing on **India**, **Japan**, and **Australia** can further capitalize on **regional growth opportunities**.

### 3. Retail Channel Dominance
With **73% of gross sales** coming from **retailers**, strengthening these partnerships is essential, especially in regions where retail is a primary sales driver.

### 4. Competitive Discounts
Offering **competitive discounts** to top Indian customers like **Flipkart** and **Amazon** has secured strong sales, especially in **e-commerce** markets.

### 5. Profitable Accessories
Focusing on **low-cost, high-volume products** like the **AQ Master Wired x1 Ms** (manufacturing cost: **$0.89**) can significantly **improve margins**.

---

## **Conclusion**

This project provided critical insights into **product performance**, **customer behavior**, and **sales trends** for AtliQ Hardware. By leveraging **MySQL** for ad-hoc analysis and using **Excel** for visualization, the analysis enabled the management to make informed, data-driven decisions.

---
