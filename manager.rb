 module Reportable
  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end
 end

 class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  include Reportable

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each { |employee| employee.give_annual_raise }
  end

  def fire_all_employees
    @employees.length.times do |index|
      @employees[index].active = false
    end
  end
end

class Intern < Employee
  include Reportable
end


employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 25000,
                    active: true
                    )

manager.print_info
intern.print_info
intern.send_report










