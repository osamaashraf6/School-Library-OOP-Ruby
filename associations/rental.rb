require 'time'

class Rental
  attr_accessor :date, :id, :person, :book

  def initialize(person, book, id, date = Time.now)
    @id = id
    @date = date
    @person = person
    @book = book
  end
end
