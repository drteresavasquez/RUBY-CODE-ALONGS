require_relative 'student_type_error'
require_relative 'student'

teresa = Student.new("Teresa")
puts teresa
puts teresa.description
puts Student.has_car?

teresa.student_age(39)