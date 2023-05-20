DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS disease;
DROP TABLE IF EXISTS hospital;
DROP TABLE IF EXISTS employ;
DROP TABLE IF EXISTS medicine;

CREATE TABLE disease
(
    disease_id number(20),
    disease_name varchar(30),
    disease_type varchar(20),
    primary key(disease_id)
);

CREATE TABLE doctor
(
    doctor_id number(20),
    disease_id number(20),
    doctor_name varchar(30),
    doctor_cntc number(11),
    doctor_city varchar(10),
    primary key(doctor_id),
    foreign key(disease_id) references disease(disease_id)
);

CREATE TABLE patient(
    patient_id number(20),
    doctor_id number(20),
    disease_id number(20),
    patient_name varchar(30),
    patient_dob DATE,
    patient_city varchar(10),
    primary key(patient_id),
    foreign key(doctor_id) references doctor(doctor_id),
    foreign key(disease_id) refernces disease
(disease_id)
);

CREATE TABLE hospital
(
    hospital_id number(20),
    hospital_name varchar(30),
    hospital_capacity number(4),
    hospital_city varchar(10),
    primary key(hospital_id)
);

CREATE TABLE employ
(
    doctor_id number(20),
    hospital_id number(20),
    primary key(doctor_id),
    foreign key(doctor_id) references doctor(doctor_id),
    foreign key(hospital_id) references hospital(hospital_id)
);

CREATE TABLE medicine
(
    medicine_id number(20),
    medicine_name varchar(30),
    disease_id number(20),
    price number(6),
    primary key(medicine_id),
    foreign key(disease_id) references disease(disease_id)
);