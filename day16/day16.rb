def day16(hex)
  binary = hex.chars.map{sprintf('%04b', _1.to_i(16))}.join("")
  sum(binary)
end

def sum(binary, mode = '100', breaker = nil)
  version_sum = 0
  values = []
  i = 0

  while binary.size > 0 && breaker != i
    version = binary.slice!(0, 3).to_i(2)
    type = binary.slice!(0, 3)
    version_sum += version
    i += 1

    if type == '100'
      literal = ''
      while true
        group = binary.slice!(0, 5)
        literal << group[1..]
        break if group[0] == '0'
      end

      values << literal.to_i(2)
    else
      if binary.slice!(0, 1) == '0'
        subpackets_length = binary.slice!(0, 15).to_i(2)
        result = sum(binary.slice!(0, subpackets_length), type)
      else
        subpackets_count = binary.slice!(0, 11).to_i(2)
        result = sum(binary, type, subpackets_count)
      end

      version_sum += result[:versions]
      values << result[:values]
    end
  end

  { versions: version_sum, values: reduce(mode, values) }
end

def reduce(mode, values)
  values.flatten!
  case mode.to_i(2)
  when 0 then values.reduce(:+)
  when 1 then values.reduce(:*)
  when 2 then values.min
  when 3 then values.max
  when 4 then values[0]
  when 5 then values[0] > values[1] ? 1 : 0
  when 6 then values[0] < values[1] ? 1 : 0
  when 7 then values[0] == values[1] ? 1 : 0
  end
end

input = File.read('day16/input.txt')
p day16(input)

