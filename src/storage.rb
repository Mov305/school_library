require 'json'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

class Storage
  $person_list = []
  $book_list = []
  $rental_list = []

  def add_person(person)
    map = []
    map = JSON.parse File.read('src/JSONs/persons.json') if File.exist?('src/JSONs/persons.json')
    map.push(person.to_map)

    file = File.open('src/JSONs/persons.json', 'w')
    file.write JSON.generate map
    file.close
  end

  def persons_from_map
    if File.exist?('src/JSONs/persons.json')
      map = JSON.parse File.read('src/JSONs/persons.json')
      map.each do |person|
        if person['specialization']
          $person_list.push Teacher.new(
            person['age'],
            person['specialization'],
            person['name'],
            person['permission'],
            person['id']
          )
        else
          $person_list.push Student.new(
            person['age'],
            nil,
            person['name'],
            person['permission'],
            person['id']
          )
        end
      end
    end
    $person_list
  end

  def add_book(book)
    map = []
    map = JSON.parse File.read('src/JSONs/books.json') if File.exist?('src/JSONs/books.json')
    map.push(book.to_map)

    file = File.open('src/JSONs/books.json', 'w')
    file.write JSON.generate map
    file.close
  end

  def books_from_map
    return unless File.exist?('src/JSONs/books.json')

    map = JSON.parse File.read('src/JSONs/books.json')
    map.each do |book|
      $book_list.push Book.new(
        book['title'],
        book['author']
      )
    end
    $book_list
  end

  def add_rental(rental)
    map = []
    map = JSON.parse File.read('src/JSONs/rentals.json') if File.exist?('src/JSONs/rentals.json')
    map.push(rental.to_map)

    file = File.open('src/JSONs/rentals.json', 'w')
    file.write JSON.generate map
    file.close
  end

  def rentals_from_map
    unless File.exist?('src/JSONs/rentals.json')	&&
           File.exist?('src/JSONs/books.json')	&&
           File.exist?('src/JSONs/persons.json')
      return
    end

    map = JSON.parse File.read('src/JSONs/rentals.json')
    map.each do |rental|
      $rental_list.push Rental.new(
        rental['date'],
        $book_list.find { |book| book.title == rental['book'] },
        $person_list.find { |p| p.id == rental['person'] }
      )
    end
    $rental_list
  end
end
