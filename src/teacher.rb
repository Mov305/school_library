# teacher  class
require_relative "person"

class Teacher < Person
  def initialize(age, specialization, name = "Unknown", parent_permission, id)
    super(age, name, id)
    @specialization = specialization
    @parent_permission = parent_permission || true
  end

  def can_use_services?
    true
  end
end
