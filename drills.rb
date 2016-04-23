#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

def say_hello
  "hello"
end

#echo
  # returns the input string

def echo(string)
  string
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

def eddie_izzards_height(heels = 0)
  67 + heels
end


#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

def how_many_args(*args)
  args.length
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

def find_answer(args = {})
  args[:answer]
end
##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word

def first_char(word)
  word[0].downcase
end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated

def polly_wanna(word)
  word * 3
end

#count_chars
  # takes in a word
  # returns the number of characters in the word

def count_chars(word)
  word.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

def yell(message)
  message.upcase + "!"
end

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message

def to_telegram(message)
  message.gsub(/[.]/, ' STOP')
end


#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out(str)
  str.downcase.split(//).join("-")
end

#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(str, seperator="-")
  str.downcase.split(//).join(seperator)
end

## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
  # google map
def croon(str)
  str.split(" ").map { |word| word.split(//).join("-")}.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
def palindrome_word?(str)
  str.downcase == str.reverse.downcase
end


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully


#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
  # googe include?
  # better to use ternary statement here:
  #{}"!?.".include?(str[-1]) ? str : str + "."
def add_period(str)
  return str if "!?.".include?(str[-1])
  str + "."
end


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces

def count_spaces(str)
  str.count(" ")
end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths(arr)
  arr.map {|str| str.length }
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list



#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

def exclude_last(input)
  input[0...-1]
end


#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_first(input)
  input[1..-1]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def exclude_ends(input)
  input[1...-1]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even(arr)
  arr.select.with_index { |el, i| el if i % 2 == 0 }
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

def select_every_odd(arr)
  arr.select.with_index { |el, i| el if i.odd? }
end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

def select_every_n(arr, n = 1)
  arr.select.with_index { |el, i| el if (i % n).zero? }
end


## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol


##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(num)
  num = num.to_i
  if num >= 0
    (0..num).to_a
  else
    0.downto(num).to_a
  end
end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
  # this one took a helluva long time to get the order right (snuck a peak at the
  # solutions for guidance)
  # true if num.class == Fixnum || num.class == Bignum
  # true if num.is_a?(Float) && !num.nan? && num.to_i == num
  # otherwise false
def is_integer?(num)
  num.class == Fixnum || num.class == Bignum ||
  (num.is_a?(Float) && !num.nan? && num.to_i == num)
end

#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

def is_prime?(num)
  # returns false for non-integer decimals & for numbers less than or equal to 1
  if !is_integer?(num) || num <= 1
    return false
  else
    # each loop checks if num is prime
    (2...num).each do |n|
      if num % n == 0
        # returns false if num is not prime
        return false
      end
    end
    #returns true if num passes all the tests. num is prime!
    true
  end
end

#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

def primes_less_than(num)
  # empty array to store prime numbers less than num
  primes = []
  # each loop from range of possible prime numbers less than num
  (2...num).each do |n|
    #checks for divisibility
    if is_prime?(n)
      #if n is prime then push it into the list of primes
      primes.push(n)
    end
  end
  #return list of primes; empty if none
  primes
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
  # Factorial Reminder: 5! = 5 * 4 * 3 * 2 * 1

def iterative_factorial(num)
  # returns 1 if num is 1 or 0
  return 1 if num == 1 || num == 0
  # returns NaN if num is less than 0 or is not a whole number
  return Float::NAN if num < 0 || !is_integer?(num)
  # otherwise calculates factorial
  (1..num).inject(:*)
end



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

def character_count(str)
  count = Hash.new(0)
  str.each_char do |char|
    char = char.downcase
    count[char] += 1
  end
  count
end


## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

def word_count(str)
  #creates a new hash with default value of 0
  count = Hash.new(0)
  #splits str at spaces and runs each loop on array of words
  str.split(" ").each do |word|
    # sets each word to lowercase and replaces all characters that are not in
    # a-z range with empty string (thanks, Stack Overflow!)
    word = word.downcase.gsub(/[^a-z ]/, '')
    # sets key to word and updates value count
    count[word] += 1
  end
  #returns count hash
  count
end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency

def most_frequent_word(str)
    # sets word count hash
    word_count = word_count(str)
    # ternary statement: returns nil if word count hash is empty (str = "")
    # if word count hash is not empty => finds max by value which returns an array
    # of the key/value pair with the highest value ex. ['word', 3]. The zero index 
    # returns the word that occurs with the most frequency
    word_count.empty? ? nil : word_count.max_by{|key,value| value}[0]
end
