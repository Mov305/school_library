# capitalize class
require_relative 'nameable'

class Capitalize < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    # capitalize the name
    @nameable.correct_name.capitalize
  end
end
