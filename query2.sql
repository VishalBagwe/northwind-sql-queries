/*Query for Find all suppliers who provide products in the ‘Seafood’ category*/
select suppliers.supplier_id,suppliers.company_name from suppliers
left join products
on suppliers.supplier_id=products.supplier_id
left join categories
on products.category_id=categories.category_id
where categories.category_name='Seafood'