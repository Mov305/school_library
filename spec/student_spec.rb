require_relative 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(20, nil, 'Name', true, 1)
  end

  it 'Student should have an id, age, name and parent permission' do
    expect(@student.id).to eq(1)
    expect(@student.age).to eq(20)
    expect(@student.name).to eq('Name')
    expect(@student.parent_permission).to eq(true)
  end

  it 'Student should have a classroom' do
    expect(@student.classroom).to eq(nil)
  end

  it 'Student should have a play_hooky method' do
    expect(@student.play_hooky).to eq('¯(ツ)/¯')
  end

  it 'to_map method should return a hash' do
    expect(@student.to_map).to eq({ id: 1, age: 20, name: 'Name', permission: true })
  end
end
