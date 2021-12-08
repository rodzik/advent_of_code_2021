def day6(input, days)
  fish = input.split(',').map(&:to_i)
  cache = {}

  fish.map { |f| count(f, days, cache) }.sum
end

def count(f, days, cache)
  return 1 if f >= days

  cache[[f, days]] ||= if f == 0
                         count(6, days - 1, cache) + count(8, days - 1, cache)
                       else
                         count(f - 1, days - 1, cache)
                       end
end

def day6_non_recursive(input, day)
  tally = input.split(',').map(&:to_i).tally
  fish = Array.new(9, 0)
  tally.each { |k, v| fish[k] = v }

  while day > 0
    day -= 1
    additional_fish = fish.shift
    fish << additional_fish
    fish[6] += additional_fish
  end

  fish.sum
end

input = File.read('day6/input.txt')
p day6(input, 256)
