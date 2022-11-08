require_relative 'rental'

class Book
  def initialize(title, author, rentals = [])
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end

  def to_map
    {
      title: title,
      author: author
    }
  end

  attr_accessor :title, :author, :rentals
end
