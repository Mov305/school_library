require './src/book'
require './src/person'
require './src/rental'
require './src/student'
require './src/teacher'
require './src/classroom'

RSpec.configure do |config|
  config.formatter = :documentation
end
