require '../lib/rover'
require '../lib/plateau'
class Calculator

  def result_array(parsed_input)
    maxPosition = parsed_input['maxPosition']
    result_array = []
    [parsed_input['question1'], parsed_input['question2']].each do |question|
      originalPosition = question['originalPosition']
      instructions = question['instructions']
      result_array << rover_new_position(originalPosition, instructions, maxPosition)
    end
    p result_array
    result_array
  end

  def rover_new_position(originalPosition, instructions, maxPosition)
    rover = Rover.new(originalPosition)
    plateau = Plateau.new(maxPosition)
    instructions.each_char do |instruction|
        rover.parse(instruction)
        break 'Out Of Range' if rover.outOfRange?(plateau)
    end
    # p rover.getPosition
    rover.getPosition
  end
end
