require_relative 'student_type_error'
require_relative 'student'

teresa = Student.new("Teresa")
teresa.student_age("test")
puts teresa
puts teresa.description
puts Student.has_car?
