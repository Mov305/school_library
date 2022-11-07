# main path
require './src/options'

def main
  $options = Options.new

  def run
    puts $options.str_to_be_print

    $options.options(gets.chomp.to_i)
  end
end

main.run
