#Attr Methods

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "kevin"
  end
end


class Greetings
  def initialize
    @person = NameData.new.name
  end
  def hello
    puts "Hello #{@person}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
* RELEASE 1 QUESTIONS
* What are these methods doing?
  ** Initialize is simply a constructor for the Profile class.  Print_info prints out the instance variables associated with the object. What_is_age/what_is_name/what_is_occupation will return the appropriate instance variables. Change_my_name/change_my_age/change_my_occupation will allow you to update the appropriate instance variables.
* How are they modifying or returning the value of instance variables?
  ** They are modifying/returning the value via instance methods.
* RELEASE 2 QUESTIONS
* What changed between the last release and this release?
  ** An attribute reader was used to be able to read the value of age from outside the class.
* What was replaced?
  ** The old method for accessing age was removed in favor of an attribute reader.
* Is this code simpler than the last?
  ** This code is more standard than the last but not really any simpler. It will be more simple once we replace all of the getters/setters with attr.
* RELEASE 3 QUESTIONS
* What changed between the last release and this release?
  ** They added an attr_writer to provide write access to the age variable.
* What was replaced?
  ** The old method for updating the age was replaced with the attr_writer.
* Is this code simpler than the last?
  ** This code is more standard than the last but not really any simpler. It will be more simple once we replace all of the getters/setters with attr.
* RELEASE 6 REFLECTION
* What is a reader method?
  ** A reader is a method that allows you to access an instance variable from outside of the class.
* What is a writer method?
  ** A writer is a method that allows you to update an instance variable from outside of the class.
* What do the attr methods do for you?
  ** attr methods are a convenient syntax to provide reader/writer methods to your instance variables.
* Should you always use an accessor to cover your bases? Why or Why not?
  ** It depends on the nature of the variable. Some variables should be private for security purposes and there may be a specific reason to not have an accessor.
* What is confusing to you about these methods?
  ** The syntax is a little strange to me regarding these methods. Also it is a little confusing that instance variables are "private" by default.
=end