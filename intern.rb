require "./employee.rb"
require "./reportable.rb"

class Intern < Employee
  include Reportable
end