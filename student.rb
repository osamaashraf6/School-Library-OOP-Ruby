require_relative 'person'

class Student < Person
  def initialize(age, name, classroom, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(crm)
    @classroom = crm
    classroom.students.push(self) unless classroom.students.includes?(self)
  end
end
