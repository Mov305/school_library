# Rental class
class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end

	def to_map
		{
			"date": @date,
			"book": @book.title,
			"person": @person.id,
		}
	end

  attr_reader :date, :book, :person
end
