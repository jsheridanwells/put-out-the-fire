require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name
begin
puts patient_contact_info
rescue => e
	puts "This variable has not been declared"
end
puts new_patient.patient_status(:coma)

begin
puts new_patient.patient_currently_admitted?
rescue => e
	puts "You must pass an argument to .patient_currently_admitted?"

end

puts new_patient.patient_new_total(125)

new_patient.add_med_to_list("Lipitor", 123.12)
new_patient.patient_medications_list