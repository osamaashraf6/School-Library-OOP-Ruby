require_relative './../associations/rental'

describe 'Test rental object' do
  rental = Rental.new('Test name', 'Book', 250, '05/05/2022')

  it 'takes parameters and returns a Rental object' do
    expect(rental).to be_instance_of(Rental)
  end

  it 'rental id should be 250' do
    expect(rental.id).to eql 250
  end

  it "rental person should be 'Test name'" do
    expect(rental.person).to eql 'Test name'
  end

  it "rental date should be '05/05/2022'" do
    expect(rental.date).to eql '05/05/2022'
  end
end
