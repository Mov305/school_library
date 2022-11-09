require_relative 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new(20, 'spec', 'Name', false, 1)
  end

  context 'when Testing the Teacher class' do
    context 'Initilize values' do
      it 'shoud have id equal to 1' do
        expect(@teacher.id).to eq(1)
      end
      it 'shoud have age equal to 20' do
        expect(@teacher.age).to eq(20)
      end
      it 'shoud have name equal to "name" ' do
        expect(@teacher.name).to eq('Name')
      end
      it 'shoud have specialization equal to "spec"' do
        expect(@teacher.specialization).to eq('spec')
      end
      it 'shoud have parent_permission equal to true' do
        expect(@teacher.parent_permission).to eq(true)
      end
    end

    it 'to_map method should return a with it values' do
      expect(@teacher.to_map).to eq({
                                      id: @teacher.id,
                                      age: @teacher.age,
                                      name: @teacher.name,
                                      specialization: @teacher.specialization,
                                      permission: @teacher.parent_permission
                                    })
    end

    it 'can alway use service' do
      expect(@teacher.can_use_services?).to eq(true)
    end
  end
end
