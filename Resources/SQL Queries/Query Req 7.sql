# Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month . 
# This analysis helps to get an idea of low and high-performing months and take strategic decisions. 
# The final report contains these columns: Month Year Gross sales Amount

select
	fiscal_year,
	month(date) as fy_month,
    round(sum(gross_price * sold_quantity)/1000000, 2) as gross_total_price_mln
from fact_sales_monthly s
join fact_gross_price g using (product_code, fiscal_year)
join dim_customer c using (customer_code)
where customer = "Atliq Exclusive"
group by s.fiscal_year, fy_month
order by s.fiscal_year, fy_month 