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