puts "Destroying previous data"
User.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Patient.destroy_all
MedicalRecord.destroy_all

puts "Creating seed data"
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 0)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 0)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 0)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 0)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 0)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)
User.create( username: Faker::Name.unique.name, email: Faker::Internet.email, password: "abcd", bio: Faker::Quote.famous_last_words, image_url: "https://example.com/johndoe.png", options: 1)

# doctors info
Doctor.create(name: "Dr. John Doe", phone_number: 5551234, medical_specialties: "Cardiology, Internal Medicine", medical_license_number: 123456, user_id: 1)
Doctor.create(name: "Dr. Jane Smith", phone_number: 5554321, medical_specialties: "Pediatrics, Family Medicine", medical_license_number: 654321, user_id: 2)
Doctor.create(name: "Dr. Michael Lee", phone_number: 5559876, medical_specialties: "Dermatology, Oncology", medical_license_number: 789012, user_id: 3)
Doctor.create(name: "Dr. Elizabeth Chen", phone_number: 5556789, medical_specialties: "Neurology, Psychiatry", medical_license_number: 345678, user_id: 4)
Doctor.create(name: "Dr. William Brown", phone_number: 5552345, medical_specialties: "Orthopedics, Sports Medicine", medical_license_number: 901234, user_id: 5)
10.times do
    Patient.create(
        name: Faker::Name.unique.name,
        date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 100),
        contact_information: Faker::PhoneNumber.phone_number_with_country_code,
        user_id: rand(6..15)
    )
end
10.times do
    Appointment.create(
        appointment_date: Faker::Time.between(from: 2.years.ago, to: 2.years.since),
        reason_for_visit: "Illness",
        patient_id: rand(1..10),
        doctor_id: rand(1..5)
    )
end
MedicalRecord.create(patient_id: 1, medical_history: "On 9th September 2021 the patient complained of the following: a persistent cough that was getting worse, coughing up blood or rust-colored sputum (spit or phlegm), chest pain that worsened with deep breathing, coughing, or laughing and hoarseness.", diagnoses: "Small cell lung cancer ", treatment: "The patient was to be treated wit scheduled chemotherapy sessions and advised to abstain from smoking cigarettes and to take up exercise and a healthy diet.")
MedicalRecord.create(patient_id: 2, medical_history: "On 12th February 2021, the patient was admiited with the following symptoms:  high fever, shaking chills, and flu-like illness", diagnoses: "Malaria", treatment: " The patient was given a Artemisinin-based combination therapies (ACTs) drug to combat the illness.")
MedicalRecord.create(patient_id: 3, medical_history: "On 8th June 2021, the patient was observed to have the following symptoms: jaw cramping.sudden, involuntary muscle spasms — often in the stomach, painful muscle stiffness all over the body and trouble swallowing food.", diagnoses: "Tetanus", treatment: " The patient was administered Antitoxins to prevent further nerve damage,a sedative to control muscle spasms and an antibiotic to help fight the disease.The patient was also scheduled regular appointments every three months to check their recovery. ")
MedicalRecord.create(patient_id: 4, medical_history: "On 7th March 2022, the patient displayed flu-like symptoms that included: sore throat, fever, nausea and stomach pain.", diagnoses: "Poliomyletis", treatment: "The patient was scheduled occupational therapy after every month to check whether the muscles would regain their strength.")
MedicalRecord.create(patient_id: 5, medical_history: "On 3rd November 2020, the patient complained of the following symptoms: fever (100° F),headache, intense pain and fatigue, and a severe,dry cough.", diagnoses: "Flu", treatment: "Th patient was administered Ibuprofen, to lower their fever, aspirin for the headache and Dextromethorphan to relieve the coughing.")
MedicalRecord.create(patient_id: 6, medical_history: "On 9th December 2021, the patient displayed the following symptoms: acute watery diarrhoea with severe dehydration", diagnoses: "Cholera", treatment: "The patient was given oral rehydration solution (ORS) and advised to boil their water before drinking and to also improve on their hygiene.")
MedicalRecord.create(patient_id: 7, medical_history: "On 4th January 2021, the patient reported to the hospital with the following symptoms: redness, itching, tearing, burning sensation, pus-like discharge and crusting of the eyelids", diagnoses: "Conjunctivitis (“pink eye“)", treatment: "The patient was prescribed eye drops and advised to avoid wearing contact lenses and discard current lenses.")
MedicalRecord.create(patient_id: 8, medical_history: "On 4th November 2020, the patient complained of pulsing or throbbing pain that began with intense pain on one side of the head which lasted for several hours accompanied with nausea.", diagnoses: "Headache", treatment: "The patient was given aspirin to relieve the pain and to take a break from work in order to reduce stress levels.")
MedicalRecord.create(patient_id: 9, medical_history: "On 21st October 2020, the patient displayed symptoms that included: hives, rash, nausea, stomach cramps, nausea and diarrhea.", diagnoses: "Wheat Allergy", treatment: "The patient was administered antihistamines and some aspirin tablets.The patient was also warned on consuming wheat products to prevent further attacks.")
MedicalRecord.create(patient_id: 10, medical_history: "On 6th July 2020, the patient was admitted to the hospital with the following symptoms: muscle aches, loss of taste or smell, nausea and a high fever.", diagnoses: "COVID-19", treatment: "The patient was prescribed Nirmatrelvir with Ritonavir (Paxlovid) drug to be taken orally every five days and advised to stay indoors to prevent spreading the virus.The patient was alse scheluded an appointment after every to week to check whether the virus was fully eradicated.")
puts "Done seeding."