# Cipher Challenge

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  # Splits a string into an lower case array full of each letter.
  input = coded_message.downcase.split("")
  # Declares a variable and sets it equal to an empty array.
  decoded_sentence = []
  # Declares a hash variable that assigns each letter to a different letter.
  cipher = {"e" => "a",
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  # Looping through each character in the array.
  input.each do |x|
    # Declares a variable to hold whether a match is found or not.
    found_match = false
    # Looping through each key in the cipher.
    cipher.each_key do |y|
      # Checks if the character matches the key in the cipher.
      if x == y
        # Adds the cipher value if the character matches the key.
        decoded_sentence << cipher[y]
        # Changes the value of found_match to true as a match is found.
        found_match = true
        # Breaks out of the loop since a match has been found.
        break
      # Checks if the character is a special character (not alphabetic/numeric)
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        # Replaces special characters with a space.
        decoded_sentence << " "
        # Changes the value of found_match to true as a match has been found.
        found_match = true
        # Breaks out of the loop since a match has been found.
        break
      # If the character is a number between 0 and 9
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        # Add the number to the decoded sentence
        decoded_sentence << x
        # Set the value of found_match equal to true.
        found_match = true
        # Breaks out of the loop since a match has been found.
        break
      end
    end
    # If match has not been found
    if not found_match
      # Adds the character to the sentence
      decoded_sentence << x
    end
  end
  # Joins the array holding decoded characters back into a sentence.
  decoded_sentence = decoded_sentence.join("")
end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

  input.each do |char|
    cipher_index = cipher.find_index(char);
    if cipher_index != nil
      decoded_sentence << cipher[(cipher_index - 4) % 26]
    elsif char == "@" || char == "#" || char == "$" || char == "%"|| char == "^" || char == "&"|| char =="*"
      decoded_sentence << " "
    else
      decoded_sentence << char
    end
  end
  decoded_sentence = decoded_sentence.join("")
end





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!"
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!

#Reflection
=begin
* What concepts did you review or learn in this challenge?
  * I reviewed concepts of refactoring code. I also reviewed adding values to arrays as well as gained a better understanding of when you might want to use an array vs a hash.
* What is still confusing to you about Ruby?
  * The syntax of ruby still confuses me sometimes and trying to understand what structures are considered elegant when refactoring code is tricky.
* What are you going to study to get more prepared for Phase 1?
  * I'm going to continue studying the Well-Grounded Rubyist to gain a better understanding of different concepts in Ruby.
=end