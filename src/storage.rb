require "json"
require_relative "person"
require_relative "student"
require_relative "teacher"
require_relative "book"
require_relative "rental"

class Storage
  $person_list = []
  $book_list = []
  $rental_list = []

  def persons_from_map
    map = JSON.parse File.open("src/JSONs/persons.json").read
    map.each do |person|
      if (person["classroom"])
        $person_list.push Student.new(
          person["age"],
          nil,
          person["name"],
          person["permission"],
        )
      else
        $person_list.push Teacher.new(
          person["age"],
          person["specialization"],
          person["name"],
          person["permission"],
        )
      end
    end
    $person_list
  end

  def books_from_map
    map = JSON.parse File.open("src/JSONs/books.json").read
    map.each do |book|
      $book_list.push Book.new(
        book["title"],
        book["author"],
      )
    end
    $book_list
  end

  def rentals_from_map
    map = JSON.parse File.open("src/JSONs/rentals.json").read
    map.each do |rental|
      $rental_list.push Rental.new(
        rental["date"],
        $book_list.find { |book| book.title == rental["book"] },
        $person_list.find { |p| p.id == rental["person"] or p.name == rental["person"] },
      )
    end
    $rental_list
  end
end

# Storage.new.persons_from_map
# Storage.new.books_from_map
# p Storage.new.rentals_from_map[0].person.id
