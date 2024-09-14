-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return only rows where demand_loss_mw is missing or unknown  
WHERE 
  demand_loss_mw is NULL;
-- Retrieve all columns
SELECT 
  * 
FROM 
  grid 
  -- Return rows where demand_loss_mw is not missing or unknown   
WHERE 
  demand_loss_mw is not NULL;
