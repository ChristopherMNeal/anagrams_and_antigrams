#!/usr/bin/ruby
require ('./lib/anagrams_and_antigrams.rb')

puts "\n\n\n~~~~ WELCOME TO THE ANAGRAM CHECKER ~~~~ \n   type 'quit' at any time to exit...\n\n"
input1 = ""
input2 = ""

while (input1 != 'quit' && input2 != 'quit')
  puts "\nenter the first word or phrase you'd like to check:"
  input1 = gets.chomp
  text = Text.new(input1)
  if input1 != 'quit'
    puts "\nenter the second word or phrase you'd like to check:"
    input2 = gets.chomp
    puts "\n\n~~ #{text.anagram_checker(input2)} ~~\n\n"
  end
end