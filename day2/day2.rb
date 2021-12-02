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
