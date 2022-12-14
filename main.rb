# main path
require './src/app'

class Main
  def initialize
    @app = App.new
    @app.read_from_storage
  end

  def run
    puts str_to_be_print
    options(gets.chomp.to_i)
  end

  def str_to_be_print
    "WellCome to School Library App! \n
    Please choose an option by entering a number: \n
    1 - List all books \n
    2 - List all people \n
    3 - Create a person \n
    4 - Create a book \n
    5 - Create a rental \n
    6 - List all rentals for a given person id \n
    7 - Exit \n"
  end

  def options(option)
    case option
    when 1
      @app.list_books
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 2
      @app.list_people
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 3
      @app.create_person
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 4
      @app.create_book
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 5
      @app.create_rental
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 6
      @app.list_rentals_for_person_id
      sleep(0.5)
      print 'Press Enter to continue'
      gets.chomp
      run
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'Invalid option'
      run
    end
  end

  private :str_to_be_print, :options
end

Main.new.run
