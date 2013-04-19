require 'rubygems'
require 'active_support/inflector'

# Chapter 12 - New Classes of Objects
alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.now

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karam = #{karma}"

# 12.1 - The Time Class

time = Time.new
time2 = time + 60

puts time
puts time2

puts Time.gm(1955, 11, 5)

# 12.2 (1) - Figure out when you will turn 1 billion seconds old
puts "I will be 1 billion seconds old at: #{Time.gm(1990, 6, 14, 8, 35, 23) + 1000000000}"

# 12.2 (2) - Ask for a person's age, then give them a "clap" for each year

# Commenting this out because I'm tired of answering it.
# puts "So, how old are you really?"
# print "> "
# puts "Clap!\n" * gets.chomp.to_i

# 12.3

puts "\n\n== Time for the Dictionary =="

dict_array = [] # array literal; same as Array.new
dict_hash = {} # hash literal; same as Hash.new

dict_array[0] = 'candle'
dict_array[1] = 'glases'
dict_array[2] = 'truck'
dict_array[3] = 'Alicia'
dict_hash['shia-a'] = 'candle'
dict_hash['shaya'] = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

dict_array.each do |word|
  puts word  
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"  
end

# 12.4
puts "\n\n== Fun with Ranges =="

# This is your range literal
letters = 'a'..'c'

# Convert range to array
puts(['a', 'b', 'c'] == letters.to_a)

# Iterate over a range:
('A'..'Z').each do |letter|
  print letter
end
puts

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979))
puts(god_bless_the_70s.include?(1980))
puts(god_bless_the_70s.include?(1974.5))

# 1.5

puts "\n\n==Awesomeness due to Strings=="

da_man = 'Mr. T'
big_T = da_man[4]
puts big_T

puts

# Commenting this out because I'm tired of answering it.
# puts "Hello. My name is Julian."
# puts "I'm extremely perceptive."
# puts "What's your name?"

# name = gets.chomp
# puts "Hi, #{name}."

# if name[0] == 'C'
#   puts 'You have excellent taste in footwear.'
#   puts 'I can just tell.'
# end

puts 

prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8]
puts prof[12..19] # 8 characters total
puts

def is_avi? filename
  filename.downcase[-4..-1] == '.avi'
end
# Vicarious embarrassment
puts is_avi?('DanceMonkeyBoy.AVI')
# Hey, what in the heck is this?
puts is_avi?('toilet_paper_fiasco.jpg')

# 12.6

puts "\n\n==A Whole New World of Exercises=="

# Reject all inputs that aren't valid roman numerals

# Read in names and birthdays from a textfile; then input names and the program should return when their next birthday is and how old they will be (make sure it's their next birthday)

def date_of_next_birthday(birthday)
  # Figure out if the birthday has already passed this year
  if birthday.yday > Time.now.yday
    date_of_next_birthday = Time.gm(Time.now.year, birthday.month, birthday.day)
  else
    date_of_next_birthday = Time.gm(Time.now.year + 1, birthday.month, birthday.day)
  end
end

def age_on_next_birthday(birthday)
  next_birthday = date_of_next_birthday(birthday)
  age_on_next_birthday = next_birthday.year - birthday.year
end

def birthday_for_display(birthday)
  date_of_next_birthday = date_of_next_birthday(birthday)
  "#{date_of_next_birthday.month}-#{date_of_next_birthday.day}-#{date_of_next_birthday.year}"
end

names_and_birthdays = {}

File.open('exercise_12_6_birthdays.txt').each do |line|
  line_split_apart = line.split(', ')
  name = line_split_apart[0]
  month_and_day = line_split_apart[1]
  month = month_and_day.split(' ')[0]
  day = month_and_day.split(' ')[1]
  year = line_split_apart[2]
  birthday = Time.gm(year, month, day)
  names_and_birthdays[name] = birthday
end


puts "Who's birthday would you like to know?"
name = gets.chomp

puts "#{name.pluralize} next birthday is on #{birthday_for_display(names_and_birthdays[name])} when he will be #{age_on_next_birthday(names_and_birthdays[name])}"

