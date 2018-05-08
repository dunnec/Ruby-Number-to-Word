# This program converts a number (given by the user) to its word format
# Author: Conor Dunne
# Date 02/05/2018

#Declare and initialize the 3 String Arrays to store the word form of numbers
ones = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine",
                  "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
                  "Seventeen", "Eighteen", "Nineteen"]

teens = [" ", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
         "Seventeen", "Eighteen", "Nineteen"]

tens = ["Zero", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]

puts "Number to Word | App"
puts "This app converts the number you enter into words"
puts "Eg: 4560 = Four thousand Six Hundred and Fifty"

puts " "
puts "Enter number (0 or higher, and less than 20 million) and press ENTER"

#Take the user's input and store it in the variable 'input'
input = gets.to_i

puts " "
puts "Your number: " + input.to_s
puts " "
#Check for out of bounds number, and exit if found
if input<0 || input >19999999
  puts "Sorry but that number is out of bounds. Try again with the directions above"
  exit
end

print "Result: "

#Check it the input is 0. If so, print 'Zero' and exit
if input==0
  puts "Zero"
  exit
end

#Find how many millions are in the number
mil = input/1000000
if mil!=0
  print ones[mil] + " million "
end
rem =input%1000000

#Find how many hundred thousands
hThou = rem/100000
if hThou!=0
  print ones[hThou] + " hundred"
end
rem = rem%100000

#Find how many ten thousands
tThou = rem/10000
if tThou!=0
  print " " + tens[tThou]
end
rem = rem %10000

#Find how many thousands
thou = rem/1000
if thou!=0
  print " " + ones[thou]
end
rem = rem%1000

#Add the word 'thousand'
if hThou!=0 || tThou!=0 || thou!=0
  print " thousand"
end

#Find how many hundreds
hun = rem /100
if hun!=0
  print " " + ones[hun] + " hundred "
end
rem = rem %100

#Print remainder, but first check if its bwteen 10-19
if rem!=0
  if rem>=1 && rem<=19
    if mil!=0 || hThou!=0 || tThou!=0 || thou!=0 || hun!=0
      print "and " + ones[rem]
    else
      print ones[rem]
    end
  else
    ten = rem/10
    rem=rem%10
    print tens[ten] + " "
    if rem!=0
      print ones[rem]
    end
  end
end

puts ""
