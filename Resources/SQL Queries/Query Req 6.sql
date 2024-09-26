# Generate a report which contains the top 5 customers who received an 
# average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. 
# The final output contains these fields, customer_code customer average_discount_percentage

select 
	customer_code,
    customer,
    round(avg(pre_invoice_discount_pct),3) as average_discount
from dim_customer c
join fact_pre_invoice_deductions pre using (customer_code)
where pre_invoice_discount_pct > (select avg(pre_invoice_discount_pct) from fact_pre_invoice_deductions) and
fiscal_year = 2021 and
market = "India"
group by customer_code, customer
order by average_discount desc
limit 5
