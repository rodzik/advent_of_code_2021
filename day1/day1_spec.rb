# frozen_string_literal: true

require_relative 'day1'

RSpec.describe 'Day 1' do
  it 'counts the number of times a depth measurement increases' do
    input = [
      199, # (N/A - no previous measurement)
      200, # (increased)
      208, # (increased)
      210, # (increased)
      200, # (decreased)
      207, # (increased)
      240, # (increased)
      269, # (increased)
      260, # (decreased)
      263  # (increased)
    ]

    expect(day1p1(input)).to eq(7)
  end
end
