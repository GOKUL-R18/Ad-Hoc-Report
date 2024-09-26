# In which quarter of 2020, got the maximum total_sold_quantity? 
# final output contains these fields sorted by the total_sold_quantity, Quarter total_sold_quantity

select 
	concat('Q', quarter(date)) as fy_quarter,
    sum(sold_quantity) as total_sold_quantity
from fact_sales_monthly s
where fiscal_year = 2020
group by (fy_quarter)
order by total_sold_quantity desc