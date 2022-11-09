# class Classroom
class Classroom
  def initialize(label, students = [])
    @label = label
    @students = students
  end

	def remove_student(student)
		@students.delete(student)
	end

  def add_student(student)
    @students << student unless @students.include?(student)
		if !student.classroom.nil? && student.classroom != self
			student.classroom.remove_student student
		end

    student.classroom = self
  end

  attr_reader :students, :label
end
