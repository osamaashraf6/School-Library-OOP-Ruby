require_relative './../person'
require_relative './../nameable/nameable_decorator'
require_relative './../associations/rental'

describe Person do
  context 'Person instance behavior' do
    person = Person.new(18)

    it 'takes parameters and returns a Nameable object' do
      expect(person).to be_kind_of(Nameable)
    end

    it 'takes parameters and returns a Person object' do
      expect(person).to be_instance_of(Person)
    end

    it "person name should be 'Unknown' when not defined" do
      expect(person.name).to eql 'Unknown'
    end
  end

  context 'Underage using rental services.' do
    it 'A person could use services if parent permission is true' do
      person = Person.new(16)
      expect(person.can_use_services?).to eql true
    end

    it 'A person could not use services if parent permission is false' do
      person = Person.new(16, parent_permission: false)
      expect(person.can_use_services?).to eql false
    end
  end

  context 'Using correct_name method.' do
    it 'Should return the name' do
      person = Person.new(16, 'Delfín Quishpe')
      expect(person.correct_name).to eql 'Delfín Quishpe'
    end
  end

  context 'Using add_rental method.' do
    person = Person.new(18, 'Delfín Quishpe')
    rental = Rental.new(person, Book.new('Title', 'Author'), 1, '2023-01-05')
    person.add_rental(rental)
    it 'Rentals array should contain the rental' do
      expect(person.rentals.include?(rental)).to eql true
    end
  end

  context 'testing private method of_age.' do
    person = Person.new(18, parent_permission: false)
    it 'Should return true if age is greater than 17 even if parent_permission is set to false' do
      expect(person.send(:of_age?)).to eql true
    end
  end
end
