# Student class
require_relative 'person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown')
    super(age, name)
    @classroom = classroom
    classroom.add_student(self)
  end

  attr_accessor :classroom

  def play_hooky
    '¯(ツ)/¯'
  end
end
