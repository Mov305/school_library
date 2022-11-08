# Person  class
require_relative "nameable"
require_relative "rental"

class Person < Nameable
  def initialize(age, name = "Unkonwn", id, permission: true)
    super()
    @id = id || rand(1..1000)
    @name = name
    @age = age
    @parent_permission = permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

	def to_map
		{
			"id": @id,
			"name": @name,
			"age": @age,
			"permission": @parent_permission,
		}
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
