#Create a new class called MedTypeError that inherits from StandardError and use that as seen below:

class MedTypeError < StandardError
  # def initialize(message)
  #   super(message)
  # end
end


class Patient
    attr_accessor :first_name, :last_name, :status, :current_balance, :med_list

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @med_list = []
  end

  def patient_status(status)
    raise ArgumentError,"Argument is not a string" unless status.is_a? String

    rescue
      @status = status
  end

  def patient_currently_admitted?(admit_time)

    raise ArgumentError, "Put in one admit time" unless ARGV.length == 1

    puts "Patient currently in hospital, admitted at #{admit_time}"
  end

  def patient_new_total(amount)
    @current_balance = 0
    puts "Current balance before calculation: #{current_balance}"

    @current_balance = (current_balance + amount)/current_balance
    rescue ZeroDivisionError => e
      puts "current_balance cannot be 0"
    # This runs only if there are no exceptions
    else
      @current_balance = amount
  end

  def add_med_to_list(med, dosage)

    begin

    raise MedTypeError,"#{med} is not a string" unless med.is_a? String

    raise ArgumentError,"#{dosage} is not a integer" unless dosage.is_a? Integer

    rescue ArgumentError => e
      puts "dosage must be an integer"

    puts "Medication added: #{med}"
    @med_list.push([med,dosage])

    raise MedTypeError, "This is not a valid medication" unless med.equal? "Ritalin"

    rescue MedTypeError => e
      puts "There has been a medication error"

    else
      puts @med_list

    ensure
      puts "Let's keep going"

    end

  end

  def patient_medications_list
    puts "User medication list:"

    raise RuntimeError, "Medications list is not valid." unless @med_list.length.equal? 1
    puts @med_list

    # This needs to run whether there was an exception or not.
    ensure
      puts "Disclaimer: The hospital is not responsible for the user's health due to medications they may be using."
  end
end