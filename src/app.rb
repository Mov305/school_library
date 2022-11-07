require_relative 'person'
require_relative 'trimmer_name'
require_relative 'capitalize_name'
require_relative 'student'
require_relative 'classroom'
require_relative 'book'
require_relative 'teacher'

class App
  $people_list = []
  $book_list = []
  $rental_list = []

  def list_books
    puts 'List of books'
    $book_list.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_people
    puts 'List of people'
    $people_list.each do |person|
      puts "Type: #{person.class}, Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

	def input_gets_age_name
		print 'Age: '
		age = gets.chomp.to_i
		print 'Name: '
		name = gets.chomp

		{
			age: age,
			name: name,
		}
	end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    sub_option = gets.chomp.to_i
    case sub_option
    when 1
			person_info = input_gets_age_name
      print 'Has parent permission? [Y/N]'
      permission = gets.chomp
      permission = permission.downcase == 'y'
      student = Student.new(person_info[:age], nil, person_info[:name], permission)
      $people_list << student
      puts 'Person created successfully'
    when 2
			person_info = input_gets_age_name
      print 'Specialization:'
      specialization = gets.chomp
      teacher = Teacher.new(person_info[:age], specialization, person_info[:name])
      $people_list << teacher
      puts 'Person created successfully'
    else
      puts 'Invalid option'
      create_person
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    $book_list << book
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Chose a book from the following list by number'
    $book_list.each_with_index do |book, index|
      puts "#{index + 1}) Title: #{book.title}, Author: #{book.author}"
    end
    print 'Book number: '
    book_number = gets.chomp.to_i - 1
    puts 'Chose a person from the following list by number'
    $people_list.each_with_index do |person, index|
      puts "#{index + 1}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    print 'Person number: '
    person_number = gets.chomp.to_i - 1
    print 'Date: '
    date = gets.chomp
    needed_book = $book_list.at(book_number)
    needed_person = $people_list.at(person_number)
    needed_book.add_rental(date, needed_person)
    rental = Rental.new(date, needed_book, needed_person)
    $rental_list << rental
    puts 'Rental created successfully'
  end

  def list_rentals_for_person_id
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    $rental_list.each do |rental|
      if rental.person.id == id
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}, Person: #{rental.person.name}"
      end
    end
  end
end
