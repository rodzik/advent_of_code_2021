# frozen_string_literal: true

require_relative 'day6'

RSpec.describe 'Day 6' do
  let(:fish_list) { '3,4,3,1,2' }

  context 'recursive' do
    it 'counts fish after 18 days' do
      expect(day6(fish_list, 18)).to eq(26)
    end

    it 'counts fish after 80 days' do
      expect(day6(fish_list, 80)).to eq(5934)
    end

    it 'counts fish after 256 days' do
      expect(day6(fish_list, 256)).to eq(26984457539)
    end
  end

  context 'non-recursive' do
    it 'counts fish after 18 days' do
      expect(day6_non_recursive(fish_list, 18)).to eq(26)
    end

    it 'counts fish after 80 days' do
      expect(day6_non_recursive(fish_list, 80)).to eq(5934)
    end

    it 'counts fish after 256 days' do
      expect(day6_non_recursive(fish_list, 256)).to eq(26984457539)
    end
  end
end
