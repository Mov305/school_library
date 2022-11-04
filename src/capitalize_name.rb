# capitalize  class
require_relative 'decorator'

class Capitalize < Decorator
  def correct_name
    # capitalize the name
    @nameable.correct_name.capitalize
  end
end
