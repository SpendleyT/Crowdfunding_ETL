-- Query each table to validate import
SELECT * FROM campaigns ORDER BY cf_id;

SELECT * FROM contacts ORDER BY contact_id;

SELECT * FROM category ORDER BY category_id;

SELECT * FROM subcategory ORDER BY subcategory_id;


-- Query to confirm joins
SELECT campaigns.company_name, campaigns.description, contacts.email, 
	category.category, subcategory.subcategory 
FROM campaigns 
LEFT JOIN contacts on campaigns.contact_id = contacts.contact_id
LEFT JOIN category on campaigns.category_id = category.category_id
LEFT JOIN subcategory on campaigns.subcategory_id = subcategory.subcategory_id
ORDER BY company_name
LIMIT 10;
