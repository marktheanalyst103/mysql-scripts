# CREATION OF A DATABASE TO USE
create database healthcare_data;
use healthcare_data;	

# CREATING THE TABLE WHERE WE WILL INSERT THE EXCEL FILE DATA
create table patient_records (
	id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female'),
    blood_type VARCHAR(5),
    medical_condition VARCHAR(255),
    date_of_admission DATE, 
    doctor VARCHAR(100),
    hospital VARCHAR(100),
    insurance_provider VARCHAR(100),
    billing_amount DECIMAL(10,2),
    room_number INT, 
    admission_type ENUM('Emergency', 'Elective', 'Urgent'),
    discharge_date DATE, 
    medication VARCHAR(255), 
    test_results ENUM ('Normal', 'Abnormal', 'Inconclusive')
    )
;

select * from patient_records;

# ENABLE LOCAL INFILE VIA CONNECTION SETTINGS
SHOW VARIABLES LIKE 'local_infile'; -- This allows us to upload the Excel file
-- [It's ON already, but still not working...] 
-- Turns out I had to use a Python script to fix this part


## DATA CLEANING
# CLEANING THE NAMES (Capitalize the first letter of each word and remove titles such as Mr., Ms., Mrs., Dr., etc.)

DELIMITER $$

CREATE FUNCTION TitleCase(input TEXT) RETURNS TEXT -- 'input TEXT' is the messy name you give, and will be returned as a cleaned TEXT afterward
DETERMINISTIC -- ensures the function will always provide the same result for the same input
BEGIN
  DECLARE result TEXT DEFAULT ''; -- "I want to make a box called 'result' where we’ll store the name we’re fixing, and right now it’s empty."
  DECLARE word TEXT; -- "This is another box called 'word', which will hold individual words from the name we’re fixing."

  WHILE CHAR_LENGTH(input) > 0 DO -- "As long as there’s something in the name (as long as it’s not empty), keep going."
    SET word = TRIM(SUBSTRING_INDEX(input, ' ', 1)); -- "Let’s grab the first word in the name, and clean up any extra spaces around it." 
                                                -- (For example, if the name is " Mr. DAVID ", this grabs "Mr.".)

    IF CHAR_LENGTH(word) > 0 THEN -- "If the word is not empty, we proceed with formatting it."
      SET result = CONCAT(
        result,
        UPPER(LEFT(word, 1)), -- "Take the first letter of the word and make it uppercase (e.g., 'm' becomes 'M')."
        LOWER(SUBSTRING(word, 2)), -- "Make the rest of the word lowercase (e.g., 'DAVID' becomes 'david')."
        ' ' -- Add a space after the word so that the next word can be processed later.
      );
    END IF;

    IF LOCATE(' ', input) > 0 THEN -- "We’re checking if there’s a space left in the name. If there’s a space, that means there’s more than one word."
      SET input = TRIM(SUBSTRING(input, LOCATE(' ', input) + 1)); -- "If we found a space, we cut off the part we just fixed (the first word) and work with the rest of the name (the part after the space)."
    ELSE
      SET input = ''; -- "If there’s no space (meaning we’ve finished processing all the words), we make the input empty, which stops the loop."
    END IF;

  END WHILE; -- "This ends the loop that goes through all the words in the name."

  RETURN TRIM(result); -- "Once we’ve fixed the whole name, we return it, and TRIM() ensures there’s no extra space at the end."
END$$

DELIMITER ;

SELECT TitleCase('mR. DAVID pIERce Md') AS formatted; -- To check if the function is working properly

SELECT  
  patient_name AS original_name,  
  TRIM(
    REGEXP_REPLACE(
      TitleCase(patient_name),
      '^(Mr\\.?|Mrs\\.?|Ms\\.?|Dr\\.?|Md\\.?|MD\\.?|Phd\\.?|PhD\\.?|M\\.D\\.)(\\s+)', 
      ''
    )
  ) AS cleaned_name
FROM patient_records;

-- UPDATING THE TABLE NOW 
UPDATE patient_records
SET patient_name = TRIM(
  REGEXP_REPLACE(
    TitleCase(patient_name),
    '\\b(Mr\\.|Mrs\\.|Ms\\.|Dr\\.|Md\\.?|MD|Phd|PhD|M\\.D\\.)\\b',
    ''
  )
);

select * from patient_records; -- Finally, a cleaned and formatted patient_name


# CLEANING THE HOSPITAL COLUMN (removing the "," at the end)
SELECT 
  hospital AS original_hospital,
  REGEXP_REPLACE(hospital, ',\\s*$', '') AS cleaned_hospital -- If there’s a comma and maybe spaces at the end of the hospital name, just remove it.
FROM patient_records
;

UPDATE patient_records
SET hospital = REGEXP_REPLACE(hospital, ',\\s*$', '')
;

select * from patient_records; -- Hospital column cleaned successfully


## BASIC QUERIES (Data Exploration)
#1. How many unique patients are recorded in the dataset?	
select COUNT(patient_name) as unique_patients
from patient_records
;

-- or,
select COUNT(DISTINCT id) as unique_id
from patient_records
;

#2. Retrieve a list of distinct hospitals where patients were admitted.
select DISTINCT hospital as distinct_hospital
from patient_records
order by hospital -- not really necessary
;

#3. Find all patients diagnosed with Diabetes, displaying their name, age, and hospital.
select  
	patient_name, 
    age,
    hospital
from patient_records
where 
	medical_condition LIKE '%Diabetes%' -- anything that contains the word 'Diabetes'
;

#4.	Count the number of male and female patients in the dataset.
select COUNT(gender) as unique_female
from patient_records
where
	gender LIKE 'Female'
;

select COUNT(gender) as unique_male
from patient_records
where 
	gender LIKE 'Male'
;

#5. What are the different types of admissions, and how many patients fall under each category?
select 
	admission_type, COUNT(*) as patient_count
from patient_records
group by admission_type
;

## AGGREGATION & GROUPING
#6.	Count the number of patients admitted per hospital, ordered by the highest admissions.
select
	hospital, COUNT(*) as total_admission
from patient_records
group by hospital
order by total_admission desc
;

#7.	What is the average billing amount for each admission type?
select
	admission_type, ROUND(AVG(billing_amount),2) as avg_bill -- to display only two decimal places
from patient_records
group by admission_type
;

#8.	Identify the hospital with the highest total billing amount across all admissions.
select
	hospital, SUM(billing_amount) as total_bill
from patient_records
group by hospital
order by total_bill desc
limit 1 
;

#9.	Retrieve the top 5 most common medical conditions, sorted by the number of patients diagnosed.
select
	medical_condition, COUNT(*) as patients_diagnosed
from patient_records
group by medical_condition
order by patients_diagnosed desc
limit 5
;

#10.	Which doctor has treated the most patients, and how many have they treated?
select 
	doctor, COUNT(*) as patients_treated
from patient_records
group by doctor
order by patients_treated desc
limit 1
;

## DATE & TIME ANALYSIS
#11. What is the earliest and latest admission date recorded?
select
	MIN(date_of_admission) as earliest_admission,
    MAX(discharge_date) as latest_admission
from patient_records
;

#12. Count the number of patients admitted in the last 30 days from the most recent admission date.
select 
	COUNT(*) as patients_last_30days
from patient_records
where 
	date_of_admission >= 
		(
			select MAX(date_of_admission) - INTERVAL 30 day
			from patient_records
		)
;

#13. Calculate the average length of stay for patients (difference between discharge and admission date).
 select
	ROUND(AVG(DATEDIFF(discharge_date, date_of_admission)),2) as avg_length_of_stay
from patient_records
;
 
#14.Find the month and year with the highest number of admissions and the corresponding count. 
select
	DATE_FORMAT(date_of_admission, '%Y-%M') as admission_month,
    COUNT(*) as admission_count
from patient_records
group by admission_month
order by admission_count desc
limit 1
;

#15. Count how many emergency admissions happened on weekends.
select
	COUNT(*) as emergency_weekend_admissions
from patient_records
where 
	admission_type = 'Emergency'
and 
	DAYOFWEEK(date_of_admission) IN (1,7) -- 1 means SUNDAY, 7 means SATURYDAY
;

## ADVANCED QUERIES (JOINS, SUBQUERIES, AND WINDOW FUNCTIONS)
#16. Identify the most prescribed medication, along with the number of times it was prescribed.
select
	medication, 
    COUNT(*) as prescription_count 
from patient_records
group by medication
order by prescription_count desc
limit 1
;

#17. Retrieve details of patients with "Abnormal" test results, including their medical condition and assigned doctor.
select *
from patient_records
where
	test_results = 'Abnormal'
;

#18. Which insurance provider has covered the highest total billing amount?
select
	insurance_provider,
    SUM(billing_amount) as total_bill_covered
from patient_records
group by insurance_provider
order by total_bill_covered desc
limit 1
;

#19. Identify patients prescribed both "Aspirin" and "Ibuprofen" during their admission.
select patient_name
from patient_records
where medication IN ('Aspirin','Ibuprofen')
group by patient_name
HAVING COUNT(DISTINCT medication) = 2 -- ensures both were prescribed
;

#20. Find the room number with the highest patient occupancy and how many patients stayed there.
select
	room_number,
    COUNT(*) as patient_count
from patient_records
group by room_number
order by patient_count desc
limit 1
;