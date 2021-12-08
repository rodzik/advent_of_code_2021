require_relative 'day6'
require 'benchmark'

input = File.read('day6/input.txt')

Benchmark.bmbm do |x|
  x.report("recursive") { day6(input, 256) }
  x.report("non-recursive")  { day6_non_recursive(input, 256)  }
end
