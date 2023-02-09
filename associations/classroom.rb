class Classroom
  attr_reader :students
  attr_accessor :label

  def initialize(label)
    @id = Random.rand(1..1000)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student unless @students.include?(student)
    student.classroom = self
  end

  def students_name_list
    @students.map(&:name)
  end
end
