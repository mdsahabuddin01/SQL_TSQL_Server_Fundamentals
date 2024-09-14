-- Sum the demand_loss_mw column
SELECT 
  SUM(demand_loss_mw) AS MRO_demand_loss 
FROM 
  grid 
WHERE
  -- demand_loss_mw should not contain NULL values
  demand_loss_mw IS NOT NULL 
  -- and nerc_region should be 'MRO';
  AND nerc_region  = 'MRO';

-- Obtain a count of 'grid_id'
SELECT 
  COUNT(grid_id) AS RFC_count
FROM 
  grid
-- Restrict to rows where the nerc_region is 'RFC'
where
  nerc_region = 'RFC';

-- MIN, MAX and AVG
-- Find the maximum number of affected customers
SELECT
  AVG(affected_customers) AS avg_affected_customers 
  --MAX(affected_customers) AS max_affected_customers 
  --MIN(affected_customers) AS min_affected_customers 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
  demand_loss_mw IS NOT NULL;
