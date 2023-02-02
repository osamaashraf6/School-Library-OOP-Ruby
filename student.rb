require_relative 'person'

class Student < Person
  attr_reader :classroom # getter for @classroom

  def initialize(age, classroom, name: 'Unknown', parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'.encode('utf-8')
  end

  def set_classroom(classroom) # rubocop:disable Naming/AccessorMethodName
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
