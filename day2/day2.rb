# frozen_string_literal: true

def day2p1(commands)
  horizontal_position = 0
  depth = 0

  commands.each do |c|
    direction, distance = c.split(' ')

    case direction
    when 'forward' then horizontal_position += distance.to_i
    when 'up' then depth -= distance.to_i
    when 'down' then depth += distance.to_i
    end
  end

  horizontal_position * depth
end

commands = File.read('day2/input.txt').split("\n")
p day2p1(commands)

def day2p2(commands)
  horizontal_position = 0
  depth = 0
  aim = 0

  commands.each do |c|
    order, value = c.split(' ')

    case order
    when 'up' then aim -= value.to_i
    when 'down' then aim += value.to_i
    when 'forward'
      horizontal_position += value.to_i
      depth += aim * value.to_i
    end
  end

  horizontal_position * depth
end

p day2p2(commands)
