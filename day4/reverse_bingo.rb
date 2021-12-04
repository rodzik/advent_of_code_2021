# frozen_string_literal: true

require_relative 'bingo'

class ReverseBingo < Bingo
  def play
    number = nil
    finished_boards = []
    playing_boards = @boards.dup

    while playing_boards.any?
      number = @numbers.shift
      playing_boards.each { |b| b.find(number) }
      finished_boards, playing_boards = playing_boards.partition(&:finished?)
    end

    @score = finished_boards.first.score * number
  end
end
