class Decoder
  def initialize(digits)
    @digits = digits.split.map { |d| d.split('') }
    @encoded_digits = {}
    @encoded_digits['1'] = @digits.find { |d| d.size == 2 }
    @encoded_digits['4'] = @digits.find { |d| d.size == 4 }
    @encoded_digits['7'] = @digits.find { |d| d.size == 3 }
  end

  def key
    @key = {}

    find_a_code
    find_d_code
    find_b_code
    find_g_code
    find_f_code
    find_c_code
    find_e_code

    @key
  end

  private

  def find_a_code
    code = (@encoded_digits['7'] - @encoded_digits['1'])[0]
    @key[code] = 'a'
  end

  def find_d_code
    code = @digits.select { |d| d.size == 5 || d.size == 4 }.reduce { |acc, e| acc & e }[0]
    @key[code] = 'd'
  end

  def find_b_code
    code = (@encoded_digits['4'] - @encoded_digits['7'] - [@key.key('d')])[0]
    @key[code] = 'b'
  end

  def find_g_code
    six_segment_digits = @digits.select { |d| d.size == 6 }.reduce { |acc, e| acc & e }
    code = (six_segment_digits - @encoded_digits['4'] - @encoded_digits['7'])[0]
    @key[code] = 'g'
  end

  def find_f_code
    six_segment_digits = @digits.select { |d| d.size == 6 }
    one_digits = @encoded_digits['1']
    six_segment_digits.reject! { |d| d.include?(one_digits[0]) && d.include?(one_digits[1]) }
    code = (six_segment_digits[0] & one_digits)[0]
    @key[code] = 'f'
  end

  def find_c_code
    code = (@encoded_digits['1'] - [@key.key('f')])[0]
    @key[code] = 'c'
  end

  def find_e_code
    code = (%w[a b c d e f g] - @key.keys)[0]
    @key[code] = 'e'
  end
end
