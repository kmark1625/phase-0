# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error occurred in the errors.rb file.
# 2. What is the line number where the error occurs?
# => The error is said to occur on line 170.
# 3. What is the type of error message?
# => The error is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => Ruby expects more input and the end-keyword.
# 5. Where is the error in the code?
# => The error actually occurs after line 15.
# 6. Why did the interpreter give you this error?
# => There is no end keyword to complete the while loop.  Thus, at the end of the file Ruby is expecting the end keyword.

# --- error -------------------------------------------------------

south_park = "I love South Park!"

# 1. What is the line number where the error occurs?
# => The error occurred on line number 36.
# 2. What is the type of error message?
# => The error is a name error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that south_park is an undefined variable or method name.
# 4. Where is the error in the code?
# => The error in the code is on line 36.
# 5. Why did the interpreter give you this error?
# => The variable south_park hasn't been defined yet at this point in the code.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => The error occurs on line 51.
# 2. What is the type of error message?
# => The error is a no method error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that cartman is an undefined method.
# 4. Where is the error in the code?
# => The error is on line 51.
# 5. Why did the interpreter give you this error?
# => The interpreter gives you this error because the method cartman is not previously defined when it is used.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => The error is in line 67.
# 2. What is the type of error message?
# => The error is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that the wrong number of arguments has been passed to cartmans_phase.  There was an argument passed when the definition does not accept any additional arguments.
# 4. Where is the error in the code?
# => The error in the code is on line 71.
# 5. Why did the interpreter give you this error?
# => The interpreter throws this error because an argument was passed to cartmans_phrase when the method does not accept any arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I am Cartman!")

# 1. What is the line number where the error occurs?
# => The error is on line number 86.
# 2. What is the type of error message?
# => The error is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that the wrong number of arguments has been passed to cartman_says.
# 4. Where is the error in the code?
# => The error is on line 90.
# 5. Why did the interpreter give you this error?
# => The interpreter gives you this error because the method cartman_says expects an argument and none were passed.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# => The error occurs on line 107.
# 2. What is the type of error message?
# => The error message is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that the wrong number of arguments have been passed.
# 4. Where is the error in the code?
# => The error is on line 111.
# 5. Why did the interpreter give you this error?
# => The interpreter gives you this message because one argument has been passed to the method cartmans_lie when two arguments are expected based on the method definition.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => The error occurs on line 126.
# 2. What is the type of error message?
# => The error message is a type error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that the string cannot be coerced into a number.
# 4. Where is the error in the code?
# => The error in the code is on line 5.
# 5. Why did the interpreter give you this error?
# => The interpreter throws this error because * <string> is not a valid operation.  The order should be reversed to <string> * 5.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20


# 1. What is the line number where the error occurs?
# => The error is on line 141.
# 2. What is the type of error message?
# => The error is a zero division error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that  you divided by 0.
# 4. Where is the error in the code?
# => The error in the code is on line 141.
# 5. Why did the interpreter give you this error?
# => The interpreter throws this error because you are not allowed to divide by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# => The error occurs on line 157.
# 2. What is the type of error message?
# => The error message is a load error.
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells you that it cannot load the required file.
# 4. Where is the error in the code?
# => The error is on line 157.
# 5. Why did the interpreter give you this error?
# => The interpreter throws this error because you are unable to load the file "cartmans_essay.md" because it does not exist in the directory.  Also, it is not able to take in a markdown file with that command.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
* Which error was the most difficult to read?
    The most difficult to read error was the final error with "require_relative".
* How did you figure out what the issue with the error was?
    I figured out this issue through experimentation.  At first I thought the error was simply because the file did not exist, but an error was still thrown.  I realized that the require_relative command should take in a .rb file instead of a .md file.
* Were you able to determine why each error message happened based on the code?
    I was able to determine why each error message happened based on the code except for the last one.
* When you encounter errors in your future code, what process will you follow to help you debug?
    In the future I will follow much of the same process as what was followed in the exercise.  I will read the various errors and trace the messages to the line numbers.  From there I will attempt to determien the root cause of the error message and determine the appropriate way to fix the bug.
=end