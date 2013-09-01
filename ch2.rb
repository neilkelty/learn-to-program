# Exercises for the end of chapter 2

# Lets establish some common variables first?
years_in_a_decade = 10
days_in_a_year = 365
hours_in_a_day = 24
minutes_in_an_hour = 60
seconds_in_a_minute = 60

# How many hours are in year?

hours_in_a_year = hours_in_a_day * days_in_a_year
puts "There are #{hours_in_a_year} hours in a year."

# How many minutes are in a decade?

minutes_in_a_decade = years_in_a_decade * hours_in_a_year * minutes_in_an_hour
puts "There are #{minutes_in_a_decade} minutes in a decade."

# How many seconds old are you?
my_current_age = 24
seconds_in_my_age = my_current_age * hours_in_a_year * minutes_in_an_hour * seconds_in_a_minute
puts "There are #{seconds_in_my_age} seconds in my age."


# If the author is 1160 million seconds old; how old is he?
authors_age_in_seconds = 1160 * 1000000
authors_age_in_years = authors_age_in_seconds / (hours_in_a_year * minutes_in_an_hour * seconds_in_a_minute)
puts "The author is #{authors_age_in_years} years old."