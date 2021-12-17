#!/usr/bin/ruby
require ('./lib/anagrams_and_antigrams.rb')

puts "\n\n\n~~~~ WELCOME TO THE ANAGRAM CHECKER ~~~~ \n   type 'quit' at any time to exit...\nwould you like to use a dictionary to verify words (y/n)?"
# dictionary = gets.chomp
if gets.chomp == 'y'
  dictionary = true
else
  dictionary = false
end
input1 = ""
input2 = ""

while (input1 != 'quit' && input2 != 'quit')
  puts "\nenter the first word or phrase you'd like to check:"
  input1 = gets.chomp
  text = Text.new(input1)
  if input1 != 'quit'
    puts "\nenter the second word or phrase you'd like to check:"
    input2 = gets.chomp
    result = text.anagram_checker(input2, dictionary)
    if result == "neither anagrams nor antigrams"
      puts "\n\n~~ #{result}! '#{text.input1}' and '#{text.input2}' have #{text.number_of_letters} letters in common: #{text.letters_in_common}. ~~\n\n"
    elsif (result == "anagrams") || (result == "antigrams")
      puts "\n\n~~ '#{text.input1}' and '#{text.input2}' are #{result}! ~~\n\n"
    elsif result == "error"
      puts "\n\n~~ #{result}! the following aren't real words: #{text.fake_words} ~~\n\n"
    else
      puts "\n\n~~ uh oh! something went wrong... ~~\n\n"
    end
  end
end