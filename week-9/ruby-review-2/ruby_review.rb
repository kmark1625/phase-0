# Reverse Words


# I worked on this challenge [by Kevin Mark and Jack Huang].
# This challenge took me [.5] hours.

# Pseudocode
# Input: Sentence (string)
# Output: Sentence reversed (string)
# Declare variable to hold array of words
# Split sentence into array of words and reverse
# LOOP through each word
  # Reverse the word
# Join the array of words back into a string
# Return string of sentence reversed



# Initial Solution
def reverse_words(sentence)
  array = []
  array = sentence.split(" ")
  array.each do |x|
    x.reverse!
  end
  array.join(" ")
end


# Refactored Solution
def reverse_words(sentence)
  sentence.split(" ").each{|word| word.reverse!}.join(" ")
end




# Reflection
=begin
* What concepts did you review in this challenge?
  * I reviewed concepts of refactoring and chaining built-in methods together.
* What is still confusing to you about Ruby?
  * It's sometimes confusing to me when to use do and end vs bracket notation.
* What are you going to study to get more prepared for Phase 1?
  * I'm going to review the Well-Grounded Rubyist for some more background on
  the Ruby language.
=end