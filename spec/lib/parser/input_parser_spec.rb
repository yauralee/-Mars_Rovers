require 'parser/input_parser'

RSpec.describe InputParser, type: :parser do
  let(:input_parser) {InputParser.new}
  describe '#route' do
    context 'with input info' do
      it 'should return parsed info details' do
        file_name = 'resource/input_info.yml'
        parsed_input = {"maxPosition"=>[5, 5],
                        "question1"=>{"originalPosition"=>[1, 2, "N"], "instruction"=>"LMLMLMLMM"},
                        "question2"=>{"originalPosition"=>[3, 3, "E"], "instruction"=>"MMRMMRMRRM"}}
        expect(input_parser.yaml_parser(file_name)).to eq(parsed_input)
      end
    end
  end
end