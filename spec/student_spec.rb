require_relative './../student'
require_relative './../person'
require_relative './../nameable/nameable_decorator'

describe 'Test student object' do
  student = Student.new('A1', 18, 'Test Name', parent_permission: true)

  it 'takes parameters and returns a Person object' do
    expect(student).to be_kind_of(Person)
  end

  it 'takes parameters and returns a Nameable object' do
    expect(student).to be_kind_of(Nameable)
  end

  it 'takes parameters and returns a Student object' do
    expect(student).to be_instance_of(Student)
  end

  it "student name should be 'Test Name'" do
    expect(student.name).to eql 'Test Name'
  end
end
