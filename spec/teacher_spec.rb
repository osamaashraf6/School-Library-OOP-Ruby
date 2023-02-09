require_relative './../teacher'
require_relative './../person'
require_relative './../nameable/nameable_decorator'

describe Teacher do
  context 'Teacher instance behavior' do
    teacher = Teacher.new('Philosophy', 18, 'Test Name')

    it 'takes parameters and returns a Person object' do
      expect(teacher).to be_kind_of(Person)
    end

    it 'takes parameters and returns a Nameable object' do
      expect(teacher).to be_kind_of(Nameable)
    end

    it 'takes parameters and returns a Student object' do
      expect(teacher).to be_instance_of(Teacher)
    end

    it "teacher name should be 'Test Name'" do
      expect(teacher.name).to eql 'Test Name'
    end

    it "teacher specialization should be 'Philosophy'" do
      expect(teacher.specialization).to eql 'Philosophy'
    end
  end

  context 'Using can_use_services? method.' do
    it 'A teacher could use services' do
      teacher = Teacher.new('Philosophy', 26)
      expect(teacher.can_use_services?).to eql true
    end
  end
end
