-- Hospital Database Schema
-- Created by: [Grimnore]

CREATE TABLE patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    dob DATE, 
    gender VARCHAR(1),
    city VARCHAR(80),
    mobile_no NUMERIC(10)
);

CREATE TABLE doctors (
    doctor_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(80),
    specialization VARCHAR(80),
    experience_years INT,
    mobile_no NUMERIC(10)
);

CREATE TABLE departments (
    dept_id VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(80),
    building VARCHAR(80)
);

CREATE TABLE appointments (
    appt_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10) REFERENCES patients(patient_id),
    doctor_id VARCHAR(10) REFERENCES doctors(doctor_id),
    appt_date DATE, 
    diagnosis VARCHAR(256),
    status VARCHAR(20)
);

CREATE TABLE bills (
    bill_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10) REFERENCES patients(patient_id),
    appt_id VARCHAR(10) REFERENCES appointments(appt_id),
    amount NUMERIC(10, 2),
    payment_status VARCHAR(20),
    bill_date DATE
);
