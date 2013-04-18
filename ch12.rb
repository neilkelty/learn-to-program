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

# 12.2 (2) - Ask for a person's age, then give them a "clap" for each year

# 12.3