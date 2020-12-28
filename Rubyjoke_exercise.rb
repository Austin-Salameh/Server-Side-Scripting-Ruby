#-------------------------------------
#Script Name: RubyJoke.rb
#Version 1.0
#Author: Austin Salameh 
#Date: 06/12/2020
#Bellevue University
#Description: This Ruby program tells a series of five jokes
#
#-------------------------------------

# Define a Custom Class for the screen
class Screen
    def cls #Define a method that clears the display screen
    puts ("\n" * 25)     #scroll down on the screen 25 times   
    end
end

Console_Screen = Screen.new
Console_Screen.cls

#Prompt the player to play the jokes
puts "Would you like to hear a few funny jokes? (y/n)" 

#Collect the user's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the user's response
if answer == "n" 

    #Clear the screen
    Console_Screen.cls

    #if no, invite the player to return again and play
    puts "Sorry to hear that. Please return and play again soon."

else
    #Clear the screen
    Console_Screen.cls

    #Display the first joke
    puts "What is black and white and red all over? (Press Enter)"
    pause = STDIN.gets

    #Display the punch line
    puts "A messy penguin eating cherry pie! (Press Enter)"
    pause = STDIN.gets

    #clear the screen
    Console_Screen.cls

    #Display the beginning of the second joke
    puts "What is black and white and red all over? (Press Enter)"

    #Force the player to press Enter to continue
    pause = STDIN.gets

    #Display the punch line
    puts "a sunburned penguin! (Press Enter)"

    #Force the player to hit enter
    pause = STDIN.gets

    #clear the screen
    Console_Screen.cls

    #Display the third joke
    puts "What is black and white and red all over? (Press Enter)"
    pause = STDIN.gets

    #Display the punch line
    puts "An embarrassed Dalmatian puppy! (Press Enter)"
    pause = STDIN.gets

    #clear the screen
    Console_Screen.cls

    #Display the beginning of the fourth joke
    puts "What is black and white and red all over? (Press Enter)"

    #Force the player to press Enter to continue
    pause = STDIN.gets

    #Display the punch line
    puts "A zebra with a scratched knee! (Press Enter)"

    #Force the player to hit enter
    pause = STDIN.gets

    #clear the screen
    Console_Screen.cls

    #Display the beginning of the fifth joke
    puts "What is black and white and red all over? (Press Enter)"

    #Force the player to press Enter to continue
    pause = STDIN.gets

    #Display the punch line
    puts "A skunk with diaper rash! (Press Enter)"

    #Force the player to hit enter
    pause = STDIN.gets

    #clear the screen
    Console_Screen.cls

    #Thank the user for playing the game
    puts "Thanks for playing the Ruby Joke game!"

end


