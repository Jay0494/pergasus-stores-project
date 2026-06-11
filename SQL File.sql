CREATE TABLE staging_table AS
SELECT * 
FROM ecommerce_customer_behavior_dataset_v2;    

-- DATA QUALITY check table 
SELECT * FROM staging_table;


SELECT 'Total Records' AS Check_Name, COUNT(*) AS Record_Count
FROM staging_table

UNION ALL

SELECT 'Null Customer ID', COUNT(*)
FROM staging_table
WHERE customer_id IS NULL

UNION ALL

SELECT 'Null Order Date', COUNT(*)
FROM staging_table
WHERE `Date` IS NULL

UNION ALL

SELECT 'Negative Sales Amount', COUNT(*)
FROM staging_table
WHERE Total_Amount < 0

UNION ALL

SELECT 'Negative Discount amount', COUNT(*)
FROM staging_table
WHERE Discount_Amount < 0

UNION ALL

SELECT 'Invalid total amount', COUNT(*) 
FROM staging_table
WHERE ROUND(Total_Amount, 2) <> ROUND((Unit_Price * Quantity) - Discount_Amount, 2)

UNION ALL

SELECT 'Blank Product category', COUNT(*)
FROM staging_table
WHERE TRIM(product_Category) = ''

UNION ALL

SELECT 'Duplicate Records', COUNT(*)
FROM (
    SELECT order_id, Customer_ID, `Date`
    FROM staging_table
    GROUP BY order_id, Customer_ID, `Date`
    HAVING COUNT(*) > 1
) d;

-- DATE WAS STORED AS TEXT SO WE CHANGED TO DATE FORMAT
ALTER TABLE staging_table
MODIFY COLUMN `Date` DATE;  


-- EXPLORATION 

SELECT * FROM staging_table;

-- product by Net revenue  
SELECT Product_Category, ROUND(SUM(Total_Amount), 2) AS Net_revenue 
FROM staging_table
	GROUP BY Product_Category
		ORDER BY Net_Revenue
			DESC; 
 
 
-- product by gross revenue 
SELECT Product_Category, ROUND(SUM(Unit_Price * Quantity), 2) AS Gross_revenue 
FROM staging_table
	GROUP BY Product_Category
		ORDER BY Gross_Revenue
			DESC;            
            
SELECT Product_Category, ROUND(AVG(Customer_Rating), 2) AS Avg_customer_satisfaction
FROM staging_table
	GROUP BY Product_Category
		ORDER BY avg_customer_satisfaction
			DESC;                
            
            
SELECT Product_Category, ROUND(AVG(Delivery_Time_Days), 2) AS Avg_customer_satisfaction
FROM staging_table
	GROUP BY Product_Category
		ORDER BY avg_customer_satisfaction
			DESC;     
            
            
SELECT Product_Category, COUNT(*) AS demand
FROM staging_table
	GROUP BY Product_Category
		ORDER BY demand
			DESC;            
            
				
            
SELECT Is_Returning_Customer, ROUND(SUM(Total_Amount), 2) AS Net_revenue
FROM staging_table
	GROUP BY Is_Returning_Customer
		ORDER BY Net_revenue
			DESC;            
            
            
SELECT Device_Type, ROUND(AVG(Pages_Viewed), 2) AS views
FROM staging_table
	GROUP BY Device_Type
		ORDER BY views
			DESC;        
            
SELECT Device_Type, ROUND(AVG(Session_Duration_Minutes), 2) AS durat
FROM staging_table
	GROUP BY Device_Type
		ORDER BY durat
			DESC;                 


SELECT Product_Category, COUNT(*) AS demand
FROM staging_table
	WHERE Is_Returning_Customer = "True"
		GROUP BY Product_Category
			ORDER BY demand
				DESC;  
                
SELECT Product_Category, ROUND(SUM(Total_Amount), 2) AS Net_revenue
FROM staging_table
	WHERE Is_Returning_Customer = "True"
		GROUP BY Product_Category
			ORDER BY Net_revenue
				DESC; 
                
                
           
                
            