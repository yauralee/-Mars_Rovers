require 'parser/input_parser'
require 'calculator'

RSpec.describe Calculator do
  let(:input_parser){InputParser.new}
  let(:calculator){Calculator.new}
  describe '#rover_new_position' do
    context 'with question1 details' do
      it 'should return rovers new position' do
        parsed_input = input_parser.yaml_parser('resource/input_info.yml')
        originalPosition = parsed_input['question1']['originalPosition']
        instructions = parsed_input['question1']['instructions']
        maxPosition = parsed_input['maxPosition']
        new_position = [1,3,'N']
        expect(calculator.rover_new_position(originalPosition, instructions, maxPosition)).to eq(new_position)
        end
    end
  end

  describe '#result_array' do
    context 'with parsed input info' do
      it 'should return result array' do
        parsed_input = input_parser.yaml_parser('resource/input_info.yml')
        result_array = [[1, 3, "N"], [5, 1, "E"]]
        expect(calculator.result_array(parsed_input)).to eq(result_array)
      end
    end
  end
end