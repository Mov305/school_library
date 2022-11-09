require_relative 'spec_helper'

describe Rental do
	context "Initial values" do
		before :each do
			@date = '2020-01-1'
			@book = Book.new('Title Book 1', 'Author Book 1')
			@person = Person.new(20, 'Name Person 0')
			@rental =	Rental.new(@date, @book, @person)
		end

		it 'Rental should have an person, book, and date' do
			expect(@rental.date).to eq(@date)
			expect(@rental.book).to eq(@book)
			expect(@rental.person).to eq(@person)
		end
	end
end
