require './src/person'
require './src/trimmer_name'
require './src/capitalize_name'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
