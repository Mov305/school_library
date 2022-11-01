# Person class
require_relative 'nameable'

class Person < Nameable
  def initialize(age, name = 'Unkonwn', permission: true)
    super()
    @id = Random.rand(1000)
    @name = name
    @age = age
    @parent_permission = permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def age_of?
    @age >= 18
  end

  def can_use_services?
    is_age_of? || @parent_permission
  end

  def correct_name
    @name
  end
end
