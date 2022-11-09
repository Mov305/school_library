# teacher  class
require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'Unknown', parent_permission, id)
    super(age, name, id)
    @specialization = specialization
    @parent_permission = parent_permission || true
  end

  def to_map
    map = super()
    map[:specialization] = @specialization
    map
  end

  def can_use_services?
    true
  end
end
