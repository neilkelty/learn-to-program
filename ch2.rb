# Exercises for the end of chapter 2

# Lets establish some common variables first?
years_in_a_decade = 10
days_in_a_year = 365
hours_in_a_day = 24
minutes_in_an_hour = 60
seconds_in_a_minute = 60

# A few variables we'll need later
my_current_age_in_years = 24
authors_age_in_seconds = 1160 * 1000000

# How many hours are in year?
hours_in_a_year = hours_in_a_day * days_in_a_year

# How many minutes are in a decade?
minutes_in_a_year = hours_in_a_year * minutes_in_an_hour
minutes_in_a_decade = years_in_a_decade * minutes_in_a_year

# How many seconds old are you?
seconds_in_a_year = minutes_in_a_year * seconds_in_a_minute
seconds_in_my_age = my_current_age_in_years * seconds_in_a_year

# If the author is 1160 million seconds old; how old is he?
authors_age_in_years = authors_age_in_seconds / seconds_in_a_year

# Now lets make some bold statements...
puts "There are #{hours_in_a_year} hours in a year."
puts "There are #{minutes_in_a_decade} minutes in a decade."
puts "There are #{seconds_in_my_age} seconds in my age."
puts "The author is #{authors_age_in_years} years old."
