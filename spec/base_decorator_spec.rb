require_relative './../nameable/base_decorator'
require_relative './../nameable/nameable_decorator'
require_relative './../person'

describe 'Test decorator object' do
  person = Person.new(18)
  nameabledecorator = NameableDecorator.new(person)

  it 'takes parameters and returns a Nameable object' do
    expect(nameabledecorator).to be_kind_of(Nameable)
  end

  it 'takes parameters and returns a Decorator object' do
    expect(nameabledecorator).to be_instance_of(NameableDecorator)
  end
end
