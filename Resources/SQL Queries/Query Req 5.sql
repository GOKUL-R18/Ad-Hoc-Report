# Get the products that have the highest and lowest manufacturing costs. 
# The final output should contain these fields, product_code product manufacturing_cost 

select 
	product,
    product_code,
    round(manufacturing_cost, 2) as mfg_cost
from dim_product p
join fact_manufacturing_cost m using (product_code)
where manufacturing_cost = (select min(manufacturing_cost) from fact_manufacturing_cost) or 
manufacturing_cost = (select max(manufacturing_cost) from fact_manufacturing_cost)
order by manufacturing_cost desc