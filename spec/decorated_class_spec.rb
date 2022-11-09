require_relative 'spec_helper'

describe 'Testing Decorated Namables' do
  context 'non decorated Person initialize' do
    before :each do
      @person = Person.new(20, 'maximilianus', 1)
    end

    it 'correct name be @name' do
      expect(@person.correct_name).to eq(@person.name)
    end

    context 'add trim decorator to person' do
      before :each do
        @person = Trimmer.new(@person)
      end

      it 'correct_name be "maximilian" ' do
        expect(@person.correct_name).to eq('maximilian')
      end
    end

    context 'add Capitalize decorator to person' do
      before :each do
        @person = Capitalize.new(@person)
      end

      it 'correct_name be "maximilianus" ' do
        expect(@person.correct_name).to eq('Maximilianus')
      end
    end

    context 'add Capitalize and trim decorators to person' do
      before :each do
        @person = Trimmer.new(Capitalize.new(@person))
      end

      it 'correct_name be "maximilian" ' do
        expect(@person.correct_name).to eq('Maximilian')
      end
    end
  end
end
