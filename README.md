# HOSPITAL MANAGEMENT PROJECT
This project is a ruby on rails REST API to fecth doctors, patients and their appointments.

# Project Description

This project is a Ruby on Rails RESTful API that manages the data for a medical appointment booking system. The API provides endpoints that allow clients to perform CRUD operations on four models: Patient, Doctor, Appointment, and Medical Record.

The Patient, Doctor, and Appointment models have a many-to-many relationship, where a patient can book appointments with multiple doctors, and a doctor can have multiple patients. The Patient model also has a one-to-one relationship with the Medical Record model, where each patient has one medical record.

The API provides RESTful routes for viewing, creating, updating, and deleting appointments, medical records, patients, and doctors. It also provides authentication and authorization for doctors and patients to view and modify their own data.

Doctors can log in to view their appointments and take action on them, such as rescheduling or cancelling appointments. They can also view their patients' medical records.

Patients can sign up and log in to view a list of available doctors and book appointments. They can make changes to their own appointments or cancel them altogether.

Overall, this Rails API provides the backend functionality for a medical appointment booking system, allowing for the management of doctors, patients, appointments, and medical records.

## Pre-Requisites
In order to use this repository you will need the following:

- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

- **Ruby on Rails**
- **SQlite3**


## Setup
This project is hosted, and can be accessed through this link:      


- https://fnf-s1ab.onrender.com/
        

or,

You can setup this repository locally by following this manual

1. Clone the repository
    
       git clone git@github.com:Michelle-Mungai/HMS-Backend.git

2. Navigate to the directory

        cd HMS-Backend

3. If you are using VisualBasics

         code .
   
2. Ensure the ruby gems are setup in your machine
    
        bundle install
  
3. Run the application
   
         rails s
    
4. Open the application from your browser
    
   https://localhost:3000
   
   
# Application


# Routes

Use postman or thunder client to test these routes

-post   https://fnf-s1ab.onrender.com/signup

It allows users to create an account or register for the web application

example request,

    {
        "username":"hilary",
        "email" : "hilarymwendia97@gmail.com",
        "password": "12345678"
    }

example response, 

    {
    "id": 16,
    "username": "hilary",
    "email": "hilarymwendia97@gmail.com",
    "bio": null,
    "options": "PATIENT",
    "doctors": [],
    "patients": []
    }


- post https://fnf-s1ab.onrender.com/login

This route allows registered users to enter their credentials and gain access to the web application

example request,

    {       
        "email" : "hilarymwendia97@gmail.com",
        "password": "12345678"
    }

example response,

    {
    "message": "Welcome, hilary!"
    }

- get https://fnf-s1ab.onrender.com/activeuser

This route displays information about the current active user session

example response, 

    {
    "id": 16,
    "username": "hilary",
    "email": "hilarymwendia97@gmail.com",
    "bio": null,
    "options": "PATIENT",
    "doctors": [],
    "patients": []
    }   

- delete https://fnf-s1ab.onrender.com/logout

This route logs the user out of their current session, removes any session-related data.

example response, 

    {
    "message": "Goodbye!"
    }

- get https://fnf-s1ab.onrender.com/doctors

example response,

    {
        "id": 2,
        "name": "Dr. Jane Smith",
        "phone_number": 5554321,
        "medical_specialties": "Pediatrics, 
            Family Medicine",
        "medical_license_number": 654321,
        "patients":  [
            {
                    "id": 1,
                "name": "Hassan Erdman PhD",
                "date_of_birth": "1986-03
                    -23T00:00:00.000Z",
                "contact_information": "+1-284
                     (344) 481-7557 x58561"
            },

            {
                "id": 3,
                "name": "Emmy Stamm",
                "date_of_birth": "2002-10-
                    11T00:00:00.000Z",
                "contact_information": "+1-268 
                    243.456.4670 x3078"
            }
        ]
        },
The given data represents a doctor with id, name, phone number, medical specialties, medical license number, and an array of patients. Each patient object contains their id, name, date of birth, and contact information.


- get https://fnf-s1ab.onrender.com/patients/:id/appointments

This route makes use of the API to retrieve appointment information from a specific Patient

example request,

 - get https://fnf-s1ab.onrender.com/patients/2/appointments

 example response, 

    [
    {
        "id": 2,
        "appointment_date": "2023-09-18T06:55:35.154Z",
        "reason_for_visit": "Illness"
    }
    ]

The given data is an array containing a single appointment object.

- get https://fnf-s1ab.onrender.com/patients/2/medical_record

This route returns medical record information for the patient with ID 2

example response,

    {
    "id": 2,
    "medical_history": "On 12th February 2021, the patient was admiited with the following symptoms:  high fever, shaking chills, and flu-like illness",
    "diagnoses": "Malaria",
    "treatment": " The patient was given a Artemisinin-based combination therapies (ACTs) drug to combat the illness.",
    "patient": {
        "id": 2,
        "name": "Pres. Shane Mueller",
        "date_of_birth": "1946-05-28T00:00:00.000Z",
        "contact_information": "+98 1-711-869-1726"
    }
    }

    


 











# Authors
This project was contributed to by:
- [Hilary Kariuki](https://github.com/Stiflerzak/)
- [Michelle Mungai](https://github.com/Michelle-Mungai/)
- [Jacob Kinyua](https://github.com/JacobMuchori/)
- [Amina Hagi](https://github.com/aminahagi/)



## Version History

* 0.1
    * Initial Release