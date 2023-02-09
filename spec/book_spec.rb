require_relative './../associations/book'

describe '#new' do
  book = Book.new('title', 'author')
  it 'takes two parameters and returns a Book object' do
    expect(book).to be_instance_of(Book)
  end
end
