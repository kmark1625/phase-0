=begin
Pigs Fly; Wait, No They Don't.
Difficulty: Medium
Tags: Exceptions
Instructions: Can you make a method return a different value after a "return is
 called?"
=end

require 'test/unit'
extend Test::Unit::Assertions

def do_pigs_fly?
  return true
ensure
  return false
end

assert_equal do_pigs_fly?, false

#Reflection
=begin
* What concepts did you review or learn in this challenge?
  ** I reviewed the concepts of error handling and exceptions. I learned that you can use ensure to gaurantee code will run after the end of the loop.
* What is still confusing to you about Ruby?
  ** General excecution flow of code in Ruby is confusing. I learned about rescue and ensure but I'm not very clear on when to use each of these statements yet.
* What are you going to study to get more prepared for Phase 1?
  ** I'm going to continue reading the Well-Grounded-Rubyist to become more familiar with the general concepts of Ruby.
=end