# Student class
require_relative 'person'

class Student < Person
  def initialize(age, classroom = nil, name = 'Unknown', parent_permission)
    super(age, name)
    @classroom = classroom
    classroom&.add_student(self)
    @parent_permission = parent_permission || true
  end

  attr_accessor :classroom

  def play_hooky
    '¯(ツ)/¯'
  end
end
