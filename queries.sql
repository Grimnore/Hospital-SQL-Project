-- Hospital Data Analysis Queries

-- Q1: Total number of patients
SELECT COUNT(*) AS total_patients FROM patients;

-- Q2: Appointments per doctor
SELECT d.name, COUNT(a.appt_id) AS total_appointments
FROM doctors d 
JOIN appointments a ON d.doctor_id = a.doctor_id 
GROUP BY d.name 
ORDER BY total_Appointments DESC; 

-- Q3: Most common diagnoses
SELECT diagnosis, COUNT(*) AS cases
FROM appointments 
GROUP BY diagnosis 
ORDER BY cases DESC;

-- Q4: Total revenue collected
SELECT SUM(amount) AS total_revenue
FROM bills 
WHERE payment_status = 'Paid';

-- Q5: Patients with unpaid bills
SELECT p.name, b.amount 
FROM bills b 
JOIN patients p ON b.patient_id = p.patient_id 
WHERE b.payment_status = 'Unpaid';

--Q6: Appointments in 2024 
SELECT * FROM appointments 
WHERE appt_date BETWEEN '2024-01-01' AND '2024-12-31'

-- Q7: Youngest and oldest patient
SELECT MAX(dob) AS youngest, MIN(dob) AS oldest FROM patients;

-- Q8: Gender-wise patient count
SELECT gender, COUNT(*) AS patients
FROM patients 
GROUP BY gender;

-- Q9: City-wise patient distribution 
SELECT city, COUNT(*) AS patients 
FROM patients 
GROUP BY city 
ORDER BY patients DESC;

-- q10: Doctors with most completed appointments 
SELECT d.name, COUNT(a.appt_id) AS completed 
FROM doctors d 
JOIN appointments a ON d.doctor_id = a.doctor_id 
WHERE a.status = 'Completed' 
GROUP BY d.name 
ORDER BY completed DESC;
