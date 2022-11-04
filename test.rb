require './src/person'
require './src/trimmer_name'
require './src/capitalize_name'
require './src/student'
require './src/classroom'
require './src/book'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

classroom = Classroom.new('Math')
student = Student.new(22, classroom, 'maximilianus')
puts student.classroom.label

book = Book.new('The Lord of the Rings', 'J. R. R. Tolkien')
book.add_rental('2021-01-01', person)
puts book.rentals.inspect

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts array[1]
