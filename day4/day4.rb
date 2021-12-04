require 'pry'

class Bingo
  attr_reader :winning_score

  def initialize(s)
    input = s.split("\n").reject(&:empty?)
    @numbers = input.shift.strip.split(",").map(&:to_i)
    @boards = input.each_slice(5).map { |rows| Board.new(rows) }
  end

  def play
    number = nil

    while @numbers.any? && @winner.nil?
      number = @numbers.shift
      @boards.each { |b| b.find(number) }
      @winner = @boards.find(&:finished?)
    end

    @winning_score = @winner.score * number
  end

  class Board
    include Comparable

    def initialize(rows)
      @rows = rows.map(&:strip).map { |r| r.split(" ").map(&:to_i) }
      @found = { columns: Hash.new(0), rows: Hash.new(0)}
      @sum = @rows.flatten.sum
    end

    def find(number)
      @rows.each_with_index do |row, row_number|
        column_number = row.index(number)
        next unless column_number
        @sum -= number

        @found[:columns][column_number] += 1
        @found[:rows][row_number] += 1
      end
    end

    def finished?
      @found[:rows].values.any? { |v| v == 5 } || @found[:columns].values.any? { |v| v == 5 }
    end

    def score
      @sum
    end
  end
end

def day4p1(input)
  bingo = Bingo.new(input)
  bingo.play
  bingo.winning_score
end

input = File.read('day4/input.txt')
p day4p1(input)
