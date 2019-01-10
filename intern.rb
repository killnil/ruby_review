require "./employee.rb"
require "./reportable.rb"

module Actualize
  class Intern < Employee
    include Reportable
  end
end