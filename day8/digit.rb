class Digit
  #   aaaa
  #  b    c
  #  b    c
  #   dddd
  #  e    f
  #  e    f
  #   gggg

  SEGMENT_DIGITS = {
    'abcefg'  => '0',
    'cf'      => '1',
    'acdeg'   => '2',
    'acdfg'   => '3',
    'bcdf'    => '4',
    'abdfg'   => '5',
    'abdefg'  => '6',
    'acf'     => '7',
    'abcdefg' => '8',
    'abcdfg'  => '9'
  }.freeze

  def initialize(encoded, key)
    @encoded = encoded
    @key = key
  end

  def value
    code = @encoded.split('').map { |d| @key[d] }.sort.join
    SEGMENT_DIGITS[code]
  end
end
