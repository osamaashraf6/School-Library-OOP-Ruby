require_relative './nameable/nameable_decorator'

class Person < Nameable
  # getters
  attr_reader :id
  # accessors (getters and setters)
  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  attr_accessor :classroom

  # many to many relationship
  attr_reader :rentals

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def is_of_age?
    @age >= 18
  end
end
