require './src/book'
require './src/person'
require './src/rental'
require './src/student'
require './src/teacher'
require './src/classroom'
require './src/capitalize_name'
require './src/trimmer_name'

RSpec.configure do |config|
  config.formatter = :documentation
end
