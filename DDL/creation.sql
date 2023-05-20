Create table disease
(
    disease_id number(20),
    disease_name varchar(30),
    disease_type varchar(20),
    primary key(disease_id)
);

Create table doctor
(
    doctor_id number(20),
    disease_id number(20),
    doctor_name varchar(30),
    doctor_cntc number(11),
    doctor_city varchar(10),
    primary key(doctor_id),
    foreign key(disease_id) references disease(disease_id)
);

Create table patient(
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

Create table hospital
(
    hospital_id number(20),
    hospital_name varchar(30),
    hospital_capacity number(4),
    hospital_city varchar(10),
    primary key(hospital_id)
);

Create table employ
(
    doctor_id number(20),
    hospital_id number(20),
    primary key(doctor_id),
    foreign key(doctor_id) references doctor(doctor_id),
    foreign key(hospital_id) references hospital(hospital_id)
);

Create table medicine
(
    medicine_id number(20),
    medicine_name varchar(30),
    disease_id number(20),
    price number(6),
    primary key(medicine_id),
    foreign key(disease_id) references disease(disease_id)
);