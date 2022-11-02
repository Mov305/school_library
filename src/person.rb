# Person class
require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  def initialize(age, name = 'Unkonwn', rentals = [], permission: true)
    super()
    @id = Random.rand(1000)
    @name = name
    @age = age
    @parent_permission = permission
    @rentals = rentals
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

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
