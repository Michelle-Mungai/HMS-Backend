User.create(username: "johndoe", email: "johndoe@example.com", password: "password123", image_url: "https://example.com/johndoe.png", bio: "I'm a software engineer who loves to code!", created_at: Time.now, updated_at: Time.now)

User.create(username: "janedoe", email: "janedoe@example.com", password: "password123", image_url: "https://example.com/janedoe.png", bio: "I'm a designer who loves to create beautiful things!", created_at: Time.now, updated_at: Time.now)

User.create(username: "bobsmith", email: "bobsmith@example.com", password: "password123", image_url: "https://example.com/bobsmith.png", bio: "I'm a writer who loves to tell stories!", created_at: Time.now, updated_at: Time.now)


#doctors info

Doctor.create(name: "Dr. John Doe", phone_number: 5551234, medical_specialties: "Cardiology, Internal Medicine", medical_license_number: 123456)
Doctor.create(name: "Dr. Jane Smith", phone_number: 5554321, medical_specialties: "Pediatrics, Family Medicine", medical_license_number: 654321)
Doctor.create(name: "Dr. Michael Lee", phone_number: 5559876, medical_specialties: "Dermatology, Oncology", medical_license_number: 789012)
Doctor.create(name: "Dr. Elizabeth Chen", phone_number: 5556789, medical_specialties: "Neurology, Psychiatry", medical_license_number: 345678)
Doctor.create(name: "Dr. William Brown", phone_number: 5552345, medical_specialties: "Orthopedics, Sports Medicine", medical_license_number: 901234)
