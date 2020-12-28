#-------------------------------------
#Script Name: TallTale.rb
#Version 1.0
#Author: Austin Salameh 
#Date: 06/12/2020
#Bellevue University
#Description: This Ruby script demonstrates how to collect and process user input through the development of an Interactive storytelling game.
#
#-------------------------------------

class Screen
    def cls #Define a method that clears the display screen
    puts ("\n" * 25)  #scroll down on the screen 25 times
    puts ("\a")
    end
end

#Define a class represnting the game's story
class Tale 

    #Define class properties represnting story of elements
    attr_accessor :monster, :villain, :object, :place, :location

    #Define class properties representing story paragraphs
    attr_accessor :P1, :P2, :P3, :P4

    #Define a method to be used to display story paragraphs
    def tell_Story(paragraph)
        puts paragraph
    end 
end

#Main Script Logic---------------------------------------

#Initialize a new screen object
Console_Screen = Screen.new

#Execute the screen object's cls method in order to clear the screen
Console_Screen.cls

#Prompt the player to listen to a story
puts "Would you like to hear an interesting story? (y/n)" 

#Collect the user's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the user's response
if answer == "n" 

    #Clear the screen
    Console_Screen.cls

    #if no, invite the player to return again and play
    puts "Okay, perhaps another time. \n\n"

else
    Story = Tale.new #Instatiate a new story object

    #Clear the screen
    Console_Screen.cls

    #prompt the player to provide input
    print %Q{Type the name of a scary monster. (Press Enter) \n\n: }

    #Force the player to press enter to continue
    monster = STDIN.gets

    #Remove extra characters appended to the string
    monster.chomp!

    #Clear the screen
    Console_Screen.cls

    #Prompt the player to provide some input
    print %Q{Who is your favorite movie star? (Press Enter) \n\n: }

    #Force the player to press enter to continue
    villain = STDIN.gets

    #Remove extra characters appended to the string
    villain.chomp!

    #Clear the screen
    Console_Screen.cls
    
    #Prompt the player to provide some input
    print %Q{Type in the name of a thing. (Press Enter) \n\n: }
    
    #Force the player to press enter to continue
    object = STDIN.gets

    #Remove extra characters appended to the string
    object.chomp!

    #Clear the screen
    Console_Screen.cls

     #Prompt the player to provide some input
    print %Q{Enter the name of a good hiding place. (Press Enter) \n\n: }
    
    #Force the player to press enter to continue
    place = STDIN.gets

    #Remove extra characters appended to the string
    place.chomp!

    #Clear the screen
    Console_Screen.cls

    print %Q{Enter the name of popular vacation site. (Press Enter)\n\n: }

    #Force the player to press Enter to continue
    location = STDIN.gets  

    #Remove any extra characters appended to the string
    location.chomp!  

    ###############################################
    # It is time to start telling the story       #
    ###############################################
  
  #Display the first paragraph of the story
  Story.P1 = %Q{  Once upon a time in a far away land just on the 
    outskirts of #{location}, there lived three very brave young children 
    named Alexander, William and Molly. These children were known far and 
    wide as the heroes who once saved the inhabitants of #{location} from 
    an evil #{monster}. One day dark clouds descended over #{location}. 
    For 5 nights and 5 days a great storm raged, flooding all of the land 
    in #{location}, driving its inhabitants up into the hills. (Press Enter)
    }
  
    #Display the second paragraph of the story
    Story.P2 = %Q{  The good people of #{location} were not the only ones 
    driven into the hills. An evil monster named #{villain} was also awoken 
    from a 1000 year slumber and forced from its lair by the torrential 
    floods that followed the storm into #{location}. #{villain}, having 
    been asleep for so long was now hungry and soon began to prey upon the 
    helpless people. By the time the water begin to recede, over half of 
    the inhabitants had become meals for #{villain}. (Press Enter)
    }
  
    #Display the third paragraph of the story
    Story.P3 = %Q{  Desperate for help, the remaining inhabitants of 
    #{location} sent word to Alexander, William, and Molly that their help 
    was once again needed. The three children soon arrived upon the scene 
    only to find that #{villain} had cornered the last of the inhabitants 
    inside a #{place} and was preparing to eat one last meal before 
    returning to his secret lair in #{location}. (Press Enter)
    }
  
    #Display the fourth paragraph of the story
    Story.P4 = %Q{  Immediately, Alexander, William and Molly flew into 
    action. Alexander threw a #{object} and hit #{villain} in order to get 
    his attention. At the same time William and Molly crept up behind him. 
    William then threw a rope around the feet of #{villain}, momentarily 
    tying him up and allowing Molly to move in and spray #{villain} with 
    a full can of bug spray, immediately immobilizing and killing 
    #{villain}. The remaining inhabitants returned to their homes and soon 
    life in #{location} was back to normal. Alexander, William and Molly 
    returned to their homes, quietly living on the edge of #{location}, 
    waiting until the day they would be needed again. (Press Enter)
    }

    #Clear the screen
    Console_Screen.cls

    #tell the first paragraph
    Story.tell_Story Story.P1

    #Force the player to hit enter to continue
    STDIN.gets

    #Clear the screen
    Console_Screen.cls

    #tell the second paragraph
    Story.tell_Story Story.P2

    #Force the player to hit enter to continue
    STDIN.gets

    #Clear the screen
    Console_Screen.cls

    #tell the third paragraph
    Story.tell_Story Story.P3

    #Force the player to hit enter to continue
    STDIN.gets

    #Clear the screen
    Console_Screen.cls

    #tell the fourth paragraph
    Story.tell_Story Story.P4

    #Force the player to hit enter to continue
    STDIN.gets

    #Clear the screen
    Console_Screen.cls

    #Thank the user for helping play along
    puts "Thanks for helping to tell this Tall Tale! \n\n"

end