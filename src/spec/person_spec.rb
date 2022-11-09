require_relative 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(20, 'Name', 1)
  end

  it 'Person should have an id, age, name and parent permission' do
    expect(@person.id).to eq(1)
    expect(@person.age).to eq(20)
    expect(@person.name).to eq('Name')
    expect(@person.parent_permission).to eq(true)
  end
end
