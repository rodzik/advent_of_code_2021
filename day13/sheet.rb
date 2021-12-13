# frozen_string_literal: true

require_relative 'dot'
require_relative 'fold'
require 'pry'

class Sheet
  def self.for(input)
    dots, folds = input.split("\n\n").map { |a| a.split("\n") }
    dots.map! { |e| Dot.new(*e.split(',').map(&:to_i)) }
    folds.map! { |e| Fold.for(e) }
    new(dots, folds)
  end

  def initialize(dots, folds)
    @dots = dots
    @folds = folds
  end

  def fold
    fold = @folds.shift
    @dots.reject! { |dot| dot.public_send(fold.direction) == fold.value }
    stale, folded = @dots.partition { |dot| dot.public_send(fold.direction) < fold.value }
    folded.each { |dot| dot.map_fold(fold) }
    @dots = (stale + folded).uniq(&:coordinates)
  end

  def fold_all
    fold while @folds.any?
  end

  def dot_count
    @dots.size
  end

  def print
    max_x = @dots.max_by(&:x).x + 1
    max_y = @dots.max_by(&:y).y + 1

    display = []
    max_y.times { display << ('.' * max_x).chars }

    puts
    @dots.each { |dot| display[dot.y][dot.x] = '#' }
    display.each { |row| p row.join }
    puts
  end
end
