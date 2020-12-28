






class Screen

    def cls  
      puts ("\n" * 25)  
      puts "\a"   
    end
    
    def pause 
      STDIN.gets  
                  
    end
    
  end
  
  class Game
   
    def play_game
  
      Console_Screen.cls       
      
      playerHand = get_new_card
      dealerHand = get_new_card
      
      playerHand = complete_player_hand(playerHand, dealerHand)
      
      if playerHand <= 21 then
        dealerHand = play_dealer_hand(dealerHand)
      end
  
      determine_winner(playerHand, dealerHand)
  
    end
  
    def get_new_card
      
      card = 1 + rand(13)
      
      return 11 if card == 1 
  
      return 10 if card >= 10
      
      return card  
    
    end
  
    def complete_player_hand(playerHand, dealerHand)
      
      loop do  
        
        Console_Screen.cls  
        
        puts "Player's hand: " + playerHand.to_s + "\n\n"
        puts "Dealer's hand: " + dealerHand.to_s + "\n\n\n\n\n\n"
        print "Would you like another card? (Y/N) "
        
        reply = STDIN.gets  
        reply.chop!  
  
        if reply =~ /y/i then
          playerHand = playerHand + get_new_card
        end
  
        if reply =~ /n/i then
          break  
        end
        
        if playerHand > 21 then
          break  
        end
       
      end
      
      return playerHand
      
    end
  
    def play_dealer_hand(dealerHand)
      
      loop do  
        
        if dealerHand < 17 then
          dealerHand = dealerHand + get_new_card
        else
          break  
        end
        
      end
      
      return dealerHand
      
    end 
  
    def determine_winner(playerHand, dealerHand)
      
      Console_Screen.cls  
      
      puts "Player's hand: " + playerHand.to_s + "\n\n"
      puts "Dealer's hand: " + dealerHand.to_s + "\n\n\n\n\n\n"
      write_log_file("Player's hand: " + playerHand.to_s)
      write_log_file("Dealer's hand: " + dealerHand.to_s)  
  
  
      if playerHand > 21 then  
        puts "You have gone bust!\n\n"
        write_log_file("The Player has gone bust.")
        print "Press Enter to continue."    
      else  
        if playerHand == dealerHand then
            puts "Tie!\n\n"
            write_log_file("Tie!")
            print "Press Enter to continue."
          end
        if dealerHand > 21 then
            puts "The Dealer has gone bust!\n\n"
            write_log_file("The Dealer has gone bust.")
            print "Press Enter to continue."
        else
          if playerHand > dealerHand then
            puts "You have won!\n\n"
            write_log_file("The Player has won!")
            print "Press Enter to continue."
          end
          if playerHand < dealerHand then
            puts "The Dealer has won!\n\n"
            write_log_file("The Dealer has won!")
            print "Press Enter to continue."
          end
        end  
      end
        
      write_log_file("-------------------------------------------------")
      Console_Screen.pause       
      
    end
  
    def get_file(file)
  
      Console_Screen.cls  
  
      if file == "Help" then
        print $help_file
      end
      if file == "Welcome" then
        print $welcome_file
      end
      if file == "Credits" then
        print $credits_file
      end
  
      Console_Screen.pause       
  
    end
  
    def retrieve_files
  
      if RUBY_PLATFORM =~ /win32|win64/i then
        $help_file = File.read('BlackJack_Exercise.rb\BJHelp.txt')
        $welcome_file = File.read('BlackJack_Exercise.rb\BJWelcome.txt')
        $credits_file = File.read('BlackJack_Exercise.rb\BJCredits.txt')
      else
        $help_file = File.read('BlackJack_Exercise.rb\BJHelp.txt')
        $welcome_file = File.read('BlackJack_Exercise.rb\BJWelcome.txt')
        $credits_file = File.read('BlackJack_Exercise.rb\BJCredits.txt')
      end
  
    end
  
    def write_log_file(message)
  
      if RUBY_PLATFORM =~ /win32|win64/i then
        outFile = File.new('BJLog.txt', "a")  
        outFile.puts message                              
        outFile.close                                 
      else
        outFile = File.new('BJLog.txt', "a")     
        outFile.puts message                              
        outFile.close                                 
      end
  
    end
  
    def remove_log_file
  
      if RUBY_PLATFORM =~ /win32|win64/i then
        if File.exist?('BJLog.txt') then
          File.delete('BJLog.txt')
        end
      else
        if File.exist?('BJLog.txt') then
          File.delete('BJLog.txt')
        end
      end
  
    end
  
  end
  
  Console_Screen = Screen.new  
  BJ = Game.new  
  
  BJ.retrieve_files()
  
  BJ.get_file("Welcome")
  
  answer = ""  
  
  loop do
  
    Console_Screen.cls  
  
    print "Are you ready to play Ruby Blackjack? (y/n): "
  
    answer = STDIN.gets  
    answer.chop!  
  
    break if answer =~ /y|n/i 
  
  end 
  
  if answer =~ /n/i  
  
    Console_Screen.cls  
  
    puts "Okay, perhaps another time.\n\n"
  
  else  
  
    BJ.remove_log_file()
  
    BJ.get_file("Help")
  
    playAgain = ""  
  
    loop do  
      
      BJ.play_game
  
      loop do  
        Console_Screen.cls  
        print "Would you like to play another hand? (y/n): "
  
        playAgain = STDIN.gets  
        playAgain.chop!  
    
        break if playAgain =~ /n|y/i
    
      end
    
      break if playAgain =~ /n/i
    
    end
    
    BJ.get_file("Credits") 
  end