class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng

# 13.2 & 13.3 & 13.4

puts
puts "== Creating Classes =="

class Die

  def initialize
    # I'll just roll the die, though we could do something else
    # if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(value)
    if value.to_i.between?(1,6)
      @number_showing = value
    else
      puts "What you doin, try to cheat us?"
      puts "Stay right there! I'm calling security!"
    end
  end

end

# # Let's make a couple of dice...
# dice = [Die.new, Die.new]

# dice.each do |die|
#   puts die.roll
# end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

puts "Die that I haven't 'explicitly' rolled: #{Die.new.showing}"

puts "======"
puts "Quick hurry, put the dice down with the number you want!"
puts "Hurry up! We're gonna get caught!"
print "> "
# Change this back to gets.chomp to play with it.
puts Die.new.cheat(4)

puts
puts "== Baby Dragon =="

class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.    
  end

  def feed
    puts "You feed #{@name}"    
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."    
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts 'but wakes when you stop.'
    end
  end

  private
  # "private" means that the methods defined here are
  # methods internal to the object. (You can feed your
  # dragon, but you can't ask him whether he's hungry.)
    def hungry?
      # Method names can end with "?"
      # Usually, we do this only if the
      # returns true or false, like this:
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestine >= 8      
    end

    def passage_of_time
      if @stuff_in_belly > 0
        # Move food from belly to intestine.
        @stuff_in_belly     = @stuff_in_belly     - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else # Our dragon is starving!
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name} is starving! In desperation, he ate YOU!"
        exit # This quits the program.
      end

      if @stuff_in_intestine >= 10
        @stuff_in_intestine = 0
        puts "Whoops #{@name} had an accident..."
      end

      if hungry?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name}'s stomach grumbles"
      end

      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@name} does the potty dance..."
      end
    end
end

pet = Dragon.new 'Norbert'
# pet.feed
# pet.toss
# pet.walk
# pet.put_to_bed
# pet.rock
# pet.put_to_bed
# pet.put_to_bed
# pet.put_to_bed
# pet.put_to_bed

puts
puts "== Orange Tree Method =="

class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def count_height
    @height
  end

  def count_age
    @age
  end

  def count_the_oranges
    @orange_count
  end

  def one_year_passes
    pick_oranges(@orange_count)
    puts "You picked #{@oranges_picked} oranges."
    puts "Oh no, #{@orange_count} oranges fell off the tree."
    oranges_fall_off
    puts "One year passes..."
    grow
    age
    # I should pluralize age and oranges.
    puts "The tree is #{count_height} feet tall, #{count_age} years old, and has #{count_the_oranges} oranges."
    puts
  end

  def pick_oranges(number)
    @orange_count = @orange_count - number
    @oranges_picked = number
  end

  private
    def grow
      if @height < 5
        @height += 1
      elsif @age > 5
        produce_oranges
      else
        @height
      end
    end

    def produce_oranges
      @orange_count = 2 * @age
    end

    def oranges_fall_off
      @orange_count = 0
    end

    def age
      if @age < 20
        @age +=1
      else
        die
      end
    end

    def die
      puts "The orange tree has died. Please call the Tree Company."
      exit
    end
end

orange_tree = OrangeTree.new
30.times do
  orange_tree.one_year_passes
end















