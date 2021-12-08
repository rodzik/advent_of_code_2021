require_relative 'decoder'
require_relative 'digit'

class Display
  def initialize(input)
    decoder_input, @encoded_results = input.split(' | ')
    @decoder = Decoder.new(decoder_input)
  end

  def result
    key = @decoder.key
    @encoded_results.split.map { |d| Digit.new(d, key).value }.join.to_i
  end
end
