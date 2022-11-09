# the trimer  class
require_relative 'decorator'

class Trimmer < Decorator
  def correct_name
    # trim the name just take the first 10 letters
    @nameable.correct_name[0..9]
  end
end
