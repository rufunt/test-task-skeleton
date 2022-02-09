# frozen_string_literal: true

require 'rspec/autorun'
require_relative './test_skeleton.rb'

describe TestSkeleton do
  let(:suite) { TestSkeleton.new }

  it 'Should return word even or odd due to number' do
    expect(suite.even_or_odd(0)).to eq('even')
    expect(suite.even_or_odd(121)).to eq('odd')
    expect(suite.even_or_odd(-5)).to eq('odd')
    expect(suite.even_or_odd(44)).to eq('even')
  end

  it 'Should return reversed array of digits' do
    expect(suite.reverse_array(12)).to eq([2, 1])
    expect(suite.reverse_array(5896)).to eq([6, 9, 8, 5])
    expect(suite.reverse_array(0)).to eq([0])
    expect(suite.reverse_array(62854)).to eq([4, 5, 8, 2, 6])
  end

  it 'Should return highest and lowest numbers from string' do
    expect(suite.high_and_low('0 1 2 3 4 5')).to eq('5 0')
    expect(suite.high_and_low('-3 -2 -1 0 1 2 3')).to eq('3 -3')
    expect(suite.high_and_low('0')).to eq('0 0')
    expect(suite.high_and_low('-3 -2 -1')).to eq('-1 -3')
  end

  it 'Should return languages where score more than 60' do
    expect(suite.my_languages('Hindi' => 65, 'Greek' => 70, 'German' => 20)).to eq(%w[Hindi Greek])
    expect(suite.my_languages({})).to eq([])
    expect(suite.my_languages('A' => 30, 'B' => 50, 'C' => 25)).to eq([])
  end

  it 'Should return array of numbers that not in second array' do
    expect(suite.remove_array_elements([1, 2], [1])).to eq([2])
    expect(suite.remove_array_elements([1, 1, 2, 5, 3, 3], [1, 3])).to eq([2, 5])
    expect(suite.remove_array_elements([1, 2, 3, 4, nil, nil], [1, 2, nil])).to eq([3, 4])
  end

  it 'Should return string where words not consecutive repeated' do
    expect(suite.consecutive_duplicates('aa bb bb cc dd')).to eq('aa bb cc dd')
    expect(suite.consecutive_duplicates('apple banana cherry')).to eq('apple banana cherry')
    expect(suite.consecutive_duplicates('aaa aaa aaa bbb bbb bbb aaa aaa ccc ccc ddd')).to eq('aaa bbb aaa ccc ddd')
  end

  it 'Should return middle character(s) of string' do
    expect(suite.middle_chars('A')).to eq('A')
    expect(suite.middle_chars('Cherry')).to eq('r')
    expect(suite.middle_chars('push')).to eq('us')
    expect(suite.middle_chars('Do Androids Dream of Electric Sheep?')).to eq(' o')
  end
end
