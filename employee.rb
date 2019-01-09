# employee_1 = ["Nick", "Cage", 70000, true]
# employee_2 = ["Julia", "Andrews", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{ employee_2[0] } #{ employee_2[1] } makes #{ employee_2[2] } a year."

# employee_1 = {:first_name => "Nick", :last_name => "Cage", :salary => 70000, :active => true}
# employee_2 = {salary: 80000, first_name: "Julia", last_name: "Andrews", active: true}

# puts "#{ employee_1[:first_name] } #{ employee_1[:last_name] } makes #{ employee_1[:salary] } a year."
# puts "#{ employee_2[:first_name] } #{ employee_2[:last_name] } makes #{ employee_2[:salary] } a year."



class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def active
  #   @active
  # end

  def active=(new_active_status)
    @active = new_active_status
  end
end


employee_1 = Employee.new("Nick", "Cage", 70000, true)
employee_2 = Employee.new("Julia", "Andrews", 80000, true)

p employee_2.active
employee_2.active = false
p employee_2.active












