require_relative 'spec_helper'

describe Classroom do
  before :each do
    @classroom_spec = Classroom.new('spec classroom')
    @classroom_ruby = Classroom.new('ruby classroom')
    @list_of_students = [
      Student.new(20, @classroom_spec, 'Student 0', true, 0),
      Student.new(21, @classroom_spec, 'Student 1', true, 1),
      Student.new(22, nil, 'Student 2', true, 2)
    ]
  end

  context 'Initial values of Classroom spec' do
    it "label be 'spec classroom'" do
      expect(@classroom_spec.label).to eq('spec classroom')
    end

    it 'has 2 Student' do
      expect(@classroom_spec.students.length).to eq(2)
    end

    it 'all of it student most has spec_classroom as classroom' do
      @classroom_spec.students.each do |student|
        expect(student.classroom).to eq(@classroom_spec)
      end
    end
  end

  context 'Initial values of Classroom ruby' do
    it "label be 'ruby classroom'" do
      expect(@classroom_ruby.label).to eq('ruby classroom')
    end

    it 'has no Student' do
      expect(@classroom_ruby.students.length).to eq(0)
    end
  end

  context 'move students form spec to ruby' do
    before :each do
      @classroom_ruby.add_student @list_of_students[1]
    end

    it 'classroom_spec has 1 Student' do
      expect(@classroom_spec.students.length).to eq(1)
    end

    it 'classroom_ruby has 1 Student' do
      expect(@classroom_ruby.students.length).to eq(1)
    end
  end

  context 'add new student to ruby' do
    before :each do
      @classroom_ruby.add_student @list_of_students[2]
    end

    it 'classroom_spec has 2 Student' do
      expect(@classroom_spec.students.length).to eq(2)
    end

    it 'classroom_ruby has 1 Student' do
      expect(@classroom_ruby.students.length).to eq(1)
    end
  end
end
