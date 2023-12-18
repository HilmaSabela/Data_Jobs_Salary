SELECT work_year
	,CASE
		WHEN experience_level = 'SE' THEN 'Senior Level'
		WHEN experience_level = 'MI' THEN 'Mid Level'
		WHEN experience_level = 'EX' THEN 'Executive Level'
		WHEN experience_level = 'EN' THEN 'Entry Level'
		ELSE experience_level
	END AS experience_levels
	,CASE 
		WHEN employment_type = 'FT' THEN 'Full-Time'
		WHEN employment_type = 'CT' THEN 'Casual-Time'
		WHEN employment_type = 'PT' THEN 'Part-Time'
		WHEN employment_type = 'FL' THEN 'Freelancer'
		ELSE employment_type
	END AS employment_types
	,job_title
	,salary
	,salary_currency
	,salary_in_usd
	,employee_residence
	,remote_ratio
	,company_location
	,CASE
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
		ELSE company_size
	END AS company_sizes
FROM salaries
