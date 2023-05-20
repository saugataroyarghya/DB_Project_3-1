# DB_Project_3-1
The Health Management System is a project developed for a Database Sessional Course. It utilizes Oracle Database and involves the use of SQL and PL/SQL languages.

The project aims to create a comprehensive system for managing health-related information. It consists of several tables designed to store and manage various aspects of the health management process.

The main tables in the system are as follows:

Disease table: Stores information about different diseases, including disease ID, disease name, and disease type.

Doctor table: Contains details about doctors, including doctor ID, associated disease ID, doctor name, contact number, and city. The table establishes a foreign key relationship with the Disease table to maintain referential integrity.

Patient table: Stores patient information, including patient ID, associated doctor ID, associated disease ID, patient name, date of birth, and city. It establishes foreign key relationships with the Doctor and Disease tables for proper data association and integrity.

Hospital table: Contains data about hospitals, including hospital ID, hospital name, hospital capacity, and city.

Employ table: Represents the employment relationship between doctors and hospitals. It includes doctor ID and hospital ID columns and establishes foreign key relationships with the Doctor and Hospital tables.

Medicine table: Stores information about medicines, including medicine ID, medicine name, associated disease ID, and price. The table maintains a foreign key relationship with the Disease table.

The system allows healthcare providers to efficiently manage patient information, track diseases, assign doctors to patients, schedule appointments, and manage the medication and treatment process. It provides a centralized database solution that promotes data integrity, accuracy, and reliability.

SQL and PL/SQL are used to create and manipulate the database schema, define relationships, enforce data integrity through primary key and foreign key constraints, and implement stored procedures, functions, and triggers for handling complex data operations and business rules.

By implementing the Health Management System, healthcare professionals can streamline administrative tasks, improve efficiency in healthcare delivery, enhance patient care, and ensure effective management of health-related data.
