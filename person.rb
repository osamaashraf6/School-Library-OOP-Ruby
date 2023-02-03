require_relative './nameable/nameable_decorator'

class Person < Nameable
  attr_accessor :name, :age, :id, :rentals

  def initialize(age, name, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    return true if is_of_age || @parent_permission
  end

  def self.adult?
    @age >= 18
  end

  def correct_name
    @name
  end

  def add_rentals(rental)
    @rentals.push(rental)
  end
end
