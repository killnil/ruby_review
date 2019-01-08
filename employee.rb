# employee_1 = ["Nick", "Cage", 70000, true]
# employee_2 = ["Julia", "Andrews", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{ employee_2[0] } #{ employee_2[1] } makes #{ employee_2[2] } a year."

employee_1 = {:first_name => "Nick", :last_name => "Cage", :salary => 70000, :active => true}
employee_2 = {first_name: "Julia", last_name: "Andrews", salary: 80000, active: true}

puts "#{ employee_1[:first_name] } #{ employee_1[:last_name] } makes #{ employee_1[:salary] } a year."
puts "#{ employee_2[:first_name] } #{ employee_2[:last_name] } makes #{ employee_2[:salary] } a year."







