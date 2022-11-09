require_relative 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
    @person = Person.new(20, 'Name')
  end

  it 'Book should have title and author' do
    expect(@book.title).to eq('Title')
    expect(@book.author).to eq('Author')
  end

  it 'Book should have rentals' do
    expect(@book.rentals).to eq([])
  end

  it 'book should have add_rental method' do
    @book.add_rental('2020-01-01', @person)
    expect(@book.rentals.length).to eq(1)
  end

  it 'book should have to_map method' do
    expect(@book.to_map).to eq({ title: 'Title', author: 'Author' })
  end
end
