require_relative './nameable/nameable_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :age, :name, :parent_permission, :rentals

  def initialize(
    age,
    name = 'Unknown',
    parent_permission: true
  )
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals << rental
    rental.person = self
  end

  private

  def of_age?
    @age.to_i >= 18
  end
end
