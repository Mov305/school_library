require './src/book'
require './src/person'
require './src/rental'
require './src/student'
require './src/teacher'

RSpec.configure do |config|
  config.formatter = :documentation
end
