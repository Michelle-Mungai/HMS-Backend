10.times do 
    Patient.create(
        username: Faker::Name.unique.name,
        email: Faker::Internet.email,
        password: Passgen::generate(:length => 20),
        date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 100),
        contact_information: Faker::PhoneNumber.phone_number_with_country_code
    )
end 