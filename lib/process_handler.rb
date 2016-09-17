require '../lib/parser/input_parser'
require '../lib/calculator'
require '../lib/result_printer'

class ProcessHandler

  def self.process(input_file)
    parsed_input = InputParser.new.yaml_parser(input_file)
    result_array = Calculator.new.result_array(parsed_input)
    p result_array
    # ResultPrinter.new.print_result(result_array)
  end
end

ProcessHandler.process('../resource/input_info.yml')