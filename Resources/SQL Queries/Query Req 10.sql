# Get the Top 3 products in each division that have a high total_sold_quantity in the FY 2021? 
# The final output division, product_code, product, total_sold_quantity, rank_order.

with cte1 as (
select
	division,
    product_code,
    product,
    sum(sold_quantity) as total_sold_quantity
from fact_sales_monthly s
join dim_product p using (product_code)
where fiscal_year = 2021 
group by division, product_code, product
),
cte2 as (
select 
	*,
	dense_rank() over(partition by division order by total_sold_quantity desc) as drnk
from cte1 
)
select
	*
from cte2
where drnk <= 3
