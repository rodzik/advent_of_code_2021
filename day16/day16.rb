require 'pry'

def sum(hex)
  binary = hex.chars.map{sprintf('%04b', _1.to_i(16))}.join("")
  sum_version(binary)
end


def sum_version(binary)
  sum = 0
  while binary.size > 0
    version = binary.slice!(0, 3).to_i(2)
    type = binary.slice!(0, 3)
    sum += version

    if type == '100'
      true while binary.slice!(0, 5)[0] == '1'
    else
      o_t = binary.slice!(0, 1)

      if o_t == '0'
        number = binary.slice!(0, 15).to_i(2)
        sum += sum_version(binary.slice!(0, number))
      else
        binary.slice!(0, 11)
      end
    end
  end

  sum
end

input = File.read('day16/input.txt')
p sum(input)

