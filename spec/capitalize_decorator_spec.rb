require_relative './../nameable/capitalize_decorator'
require_relative './../person'

describe 'Test capitalize_decorator object' do
  person = Person.new(22, 'maximilianus')
  capitalized_person = CapitalizeDecorator.new(person)
  it 'takes parameters and returns a corrected name' do
    expect(capitalized_person.correct_name).to eql('Maximilianus')
  end

  it 'takes parameters and returns a CapitalizeDecorator object' do
    expect(capitalized_person).to be_instance_of(CapitalizeDecorator)
  end
end
