# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
person1 = Patient.create(last_name: "Legend", first_name: "John", address: "123 magic place", phone_number: "555-123-4567", emergency_contact: "Person")
person2 = Patient.create(last_name: "Spears", first_name: "Britney", address: "2 happy place", phone_number: "555-123-4567", emergency_contact: "Person")
person3 = Patient.create(last_name: "Costner", first_name: "Kevin", address: "4876 gilmore place", phone_number: "555-123-4567", emergency_contact: "Johnny")
person4 = Patient.create(last_name: "Smith", first_name: "Will", address: "94 tr place", phone_number: "555-123-4567", emergency_contact: "John Travolta")

office1 = Office.create(name: "Greenville Office", address: "101 North Main St", hours: "11AM - 5PM")
office2 = Office.create(name: "Travelers Rest Office", address: "123 Main St", hours: "8AM - 4PM")

Appointment.create(date_time: "02/01/2016 02:00 PM", patient_id: person1.id, office_id: office1.id)
Appointment.create(date_time: "02/01/2016 03:00 PM", patient_id: person2.id, office_id: office1.id)
Appointment.create(date_time: "02/02/2016 02:00 PM", patient_id: person3.id, office_id: office2.id)
Appointment.create(date_time: "02/02/2016 04:00 PM", patient_id: person4.id, office_id: office2.id)
Appointment.create(date_time: "02/03/2016 02:00 PM", patient_id: person3.id, office_id: office2.id)
Appointment.create(date_time: "02/03/2016 04:00 PM", patient_id: person4.id, office_id: office2.id)

#       t.datetime :date_time
#       t.integer :office_id
#       t.integer :patient_id

# Atest, Patient
# 2PM @ Greenville Office
# Btest, Patient
# 3PM @ Greenville Office
# Ctest, Patient
# 2PM @ Travelers Rest Office
# Dtest, Patient
# 4PM @ Travelers Rest Office