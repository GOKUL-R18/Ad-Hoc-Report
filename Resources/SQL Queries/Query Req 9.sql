# Which channel helped to bring more gross sales in the fiscal year 2021 and % of contribution? 
# The final output contains these fields, channel gross_sales_mln percentage

with cte1 as(
	select 
		channel,
		sum((g.gross_price * s.sold_quantity)) as gross_sales
	from fact_sales_monthly s
	join dim_customer c using (customer_code)
	join fact_gross_price g using (product_code, fiscal_year)
	where fiscal_year = 2021
	group by channel
),
cte2 as (
select
	sum(gross_sales) as gross_total_sales
from cte1
)

select
	channel,
    round((gross_sales/gross_total_sales),2) * 100 as gross_sales_pct
from cte1, cte2