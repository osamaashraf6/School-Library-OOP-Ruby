require_relative './../nameable/trimmer_decorator'
require_relative './../person'

describe 'Test capitalize_decorator object' do
  person = Person.new(22, 'Maximilianus')
  trimmed_person = TrimmerDecorator.new(person)

  it 'takes parameters and returns a trimmed name' do
    expect(trimmed_person.correct_name).to eql('Maximilia..')
  end

  it 'takes parameters and returns a TrimmerDecorator object' do
    expect(trimmed_person).to be_instance_of(TrimmerDecorator)
  end
end
