-- Sample Data

INSERT INTO patients VALUES
('P001', 'Aarav Sharma', '1990-05-12', 'M', 'Jaipur', 9876543210),
('P002', 'Priya Mehta', '1985-08-23', 'F', 'Delhi', 9812345678),
('P003', 'Rohan Singh', '2000-01-15', 'M', 'Mumbai', 9898765432),
('P004', 'Sneha Patel', '1995-11-30', 'F', 'Jaipur', 9765432109),
('P005', 'Karan Gupta', '1978-03-07', 'M', 'Chennai', 9654321098);

INSERT INTO doctors VALUES
('D001', 'Dr. Anjali Rao', 'Cardiology', 12, 9111222333),
('D002', 'Dr. Vikram Nair', 'Orthopedics', 8, 9222333444),
('D003', 'Dr. Sunita Joshi', 'Neurology', 15, 9333444555);

INSERT INTO departments VALUES
('DEPT01', 'Cardiology', 'Block A'),
('DEPT02', 'Orthopedics', 'Block B'),
('DEPT03', 'Neurology', 'Block C');

INSERT INTO appointments VALUES
('A001', 'P001', 'D001', '2024-01-10', 'Hypertension', 'Completed'),
('A002', 'P002', 'D002', '2024-01-15', 'Knee Pain', 'Completed'),
('A003', 'P003', 'D001', '2024-02-01', 'Chest Pain', 'Completed'),
('A004', 'P004', 'D003', '2024-02-10', 'Migraine', 'Pending'),
('A005', 'P005', 'D002', '2024-03-05', 'Back Pain', 'Completed');

INSERT INTO bills VALUES
('B001', 'P001', 'A001', 1500.00, 'Paid', '2024-01-10'),
('B002', 'P002', 'A002', 2200.00, 'Paid', '2024-01-15'),
('B003', 'P003', 'A003', 1800.00, 'Unpaid', '2024-02-01'),
('B004', 'P004', 'A004', 900.00, 'Unpaid', '2024-02-10'),
('B005', 'P005', 'A005', 3000.00, 'Paid', '2024-03-05');