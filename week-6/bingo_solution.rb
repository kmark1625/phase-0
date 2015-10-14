# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 1 hour on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create a random integer to access an array of letters containing "bingo".
  # Create a random integer between 1 and 100.

# Check the called column for the number called.
  # Create a variable to hold whether any number is equal and initialize
  # to false.
  # Iterate through each array in the board
    # IF number is equal to array value
      # set variable to true
    # ELSE
      # leave variable at false
  # Return variable holding whether number is equal

# If the number is in the column, replace with an 'x'
  # Set the value of the number to the string 'x'.

# Display a column to the console
  # LOOP through each array on the board.
    # print out the value for the relevant column

# Display the board to the console (prettily)
  # LOOP through each array on the board.
    # LOOP within each array
      # Print out the value
    #Print out a new line

# Initial Solution

class BingoBoard

  def initialize(board)
    @letters = ['B','I','N','G','O']
    @bingo_board = board
  end

  def call # Method returns a letter and a number
    letter = @letters[Random.rand(5)]
    number = Random.rand(99) + 1
    return letter, number
  end

  def check(letter, number) # Replace number with string
    @bingo_board.each do |row|
      if row[@letters.find_index(letter)] == number
        row[@letters.find_index(letter)] = 'X'
      end
    end
  end

  def display() # displays the board
    @bingo_board.each do |row|
      row.each do |item|
        print item.to_s + ' '
        if item.to_s.length == 1
          print ' '
        end
      end
      puts
    end
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
letter, number = new_game.call
new_game.check('B', 47)
new_game.display

#Reflection

