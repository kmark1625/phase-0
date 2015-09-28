* **What does puts do?**
  * Puts prints the output to the console with a new line at the end along with returning the value of "nil".  This is very similar to the print command which will output to the console, however, without a new line at the end.
* **What is an integer? What is a float?**
  * An integer is a number without a fractional piece.  For example, -1, 0, and 5 are all integers while 1/2 or 7.25 is not.  A float is a number with decimal precision at the end.  An example of a floating point number would be 7.00 or 7.79.
* **What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  * Float division is the division of two numbers in a way that accounts for the remainder.  With integer division, the remainder is dropped.  One example to denote the differences would be to think of division of floats as "including the change" when paying at a register, while integer division would drop the change at the end.

```ruby
# Prints Hours in a year to the console
puts 24 * 365
# Prints minutes in a decade to the console
puts 60 * 24 * 365 * 10
```

* **How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
  *Ruby handles all of the common arithmetic expressions (addition, subratraction, multiplication, and division) in the same way that a calculator handles them.  You can perform common arithmetic expressions on numbers.  One main difference is how integers and floats are handles.  Adding two integers will output an integer while adding an integer and a float will output a float.
* **What is the difference between integers and floats?**
  *Floats retain the fractional component of a number while integers do not.  For example, 5 is an integer while 5.25 is a float.
* **What is the difference between integer and float division?**
  *The main difference between integer and float division is that float division retains the fractional component.  The output of integer division is an integer while the output of float division is a float.  Integer division is often useful in real-life situations where the extra fractional component has no meaningful representation.  Floats are often useful in mathematical or scientific applications where precision is important.
* **What are strings? Why and when would you use them?**
  *Strings are a group of characters put together.  Strings are very useful for outputting to the console in a human-readable form.
* **What are local variables? Why and when would you use them?**
  *Local variables are a way to store data and recall it at a later point.  You can use variables to store numbers, strings, or other objects.  They can then be quickly referenced by name if needed again.  You can use them to simplify arithmetic expressions or to recall data that is used several times throughout the program.
* **How was this challenge? Did you get a good review of some of the basics?**
  *Overall, this challenge was a good re-introduction to the language of Ruby.  I was able to review some of the very basic concepts of strings and numbers.  I found some of the challenges to be a little bit too basic and would have liked to do even a bit more with the concepts in order to solidify them.

* **Links to other challenges**
![Challenge 4.2.1 - Defining Variables](defining-variables.rb)
![Challenge 4.2.2 - Simple String Methods](simple-string.rb)
![Challenge 4.2.3 - Local Variables and Basic Arithmetical Expressions](basic-math.rb)