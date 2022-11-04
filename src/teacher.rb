# teacher  class
require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', permission: true)
    super(age, name, permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
