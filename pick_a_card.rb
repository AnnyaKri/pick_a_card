# frozen_string_literal: true

puts "Hi, this is program Pick a Card"

suits = %w[♦ ♠ ♥ ♣]

values = %w[2 3 4 5 6 7 8 9 10 J Q K A]

cards = []

values.each do |value|
  suits.each do |suit|
    cards << "#{value} of #{suit}"
  end
end

cards.shuffle!
puts "How many do you pick?"
number = STDIN.gets.to_i
number.times do
  puts cards.pop
end
