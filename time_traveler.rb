require './game_node'

CURRENT_TIME = Time.now.strftime('%d %b %Y %I:%M %p')

WELCOME_MSG_TEXT = " > Welcome TimeTraveler! My name is CloudR45. I was programmed by Aaron Zomback around the foot hills of Beaujolais country in France. I will be your travel agent during this hiring test. Your current local time is #{CURRENT_TIME}. \n Would you like to continue?"
WELCOME_MSG_OPTION = "press ENTER to continue"

CENTURY_SELECTION_TEXT = " > We have little time to waste, which century would you like to visit today?"
CENTURY_SELECTION_OPTION = ['13th', '19th', '22nd']

CENTURY_13TH_TEXT = " > Welcome to the 13th century! Genghis Khan and his invading Mongols are riding towards you! What do you do? "
CENTURY_13TH_OPTION = ['jump', 'Run']
CENTURY_13TH_GAME_OVER = " > G A M E O V E R ... you've been run over and are now flat as a pancake. \n Would you like to play again?"

CENTURY_19TH_TEXT = " > ZOOM! You're now in the 19th century! I hope you've brought your winter clothes. You've joined forces fighting in Napoleon's army. As you march towards Russia the winter gets colder and colder. What do you do? "
CENTURY_19TH_OPTION = ['Drink vodka', 'jump']
CENTURY_19TH_GAME_OVER = " > G A M E O V E R...You stumbled into the snow and froze to death. Would you like to play again?"

CENTURY_22ND_TEXT = " > Et voilá! You're now in the 22nd century! It's the year 2163 and Livestream's holographic AI technology is helping you fight invading robots. What do you do?"
CENTURY_22ND_OPTION = ['Help Livestorm fight the robots', 'Switch sides and join the robots']
CENTURY_22ND_GAME_OVER = " > G A M E O V E R. There's no time for cowards! Would you like to play again?"
GAME_WINNER = " > Congratulations you've won! You helped Livestorm defeat the invading robots! Would you like to play again?"

class TimeTraveler
  def build

    play_again = TimeTraveler.new

    GameNode.new do
    
      display WELCOME_MSG_TEXT
    
      option "yes" do
        display CENTURY_SELECTION_TEXT
          option "13th" do
            display CENTURY_13TH_TEXT
              option "jump" do
                display CENTURY_19TH_TEXT
                  option "drink vodka" do
                    display CENTURY_19TH_GAME_OVER
                      option "yes" do
                        play_again
                      end
                        option "no" do
                          display "Au revoir!"
                          quit
                      end                   
                    end 
                    option "jump" do
                      display CENTURY_22ND_TEXT
                        option "fight" do
                          display GAME_WINNER
                            option "yes" do
                              play_again
                            end
                            option "no" do
                            display "Au revoir!"
                            quit
                              end      
                            end 
                            option "hide" do 
                              display CENTURY_22ND_GAME_OVER
                                option "yes" do
                                  play_again
                                end
                                option "no" do
                                  display "Au revoir!"
                                  quit
                                end     
                            end 
                        end 
                    end
                    option "run" do 
                      display CENTURY_13TH_GAME_OVER
                      option "yes" do
                        play_again
                      end
                      option "no" do
                        display "Au revoir!"
                        quit
                      end                   
                    end 
                end 
                option "19th" do
                  display CENTURY_19TH_TEXT
                    option "jump" do
                      display CENTURY_22ND_TEXT
                        option "hide" do
                          display CENTURY_22ND_GAME_OVER
                            option "yes" do
                              play_again
                            end
                            option "no" do
                              display "Au revoir!"
                              quit
                            end     
                        end 
                        option "fight" do
                          display GAME_WINNER
                            option "yes" do
                              play_again
                            end
                            option "no" do
                              display "Au revoir!"
                              quit
                            end     
                        end 
                    end
                    option "drink vodka" do
                      display CENTURY_19TH_GAME_OVER
                        option "yes" do
                          play_again
                        end
                        option "no" do
                          display "Au revoir!"
                          quit
                        end     
                    end  
                end 
    
                option "22nd" do
                  display CENTURY_22ND_TEXT
                    option "fight" do
                      display GAME_WINNER
                      option "yes" do
                        play_again
                      end
                      option "no" do
                        display "Au revoir!"
                        quit
                      end      
                    end
                    option "hide" do
                      display CENTURY_22ND_GAME_OVER
                      option "yes" do
                        play_again
                      end
                      option "no" do
                        display "Au revoir!"
                        quit
                      end      
                    end 
          end  
      end

      option "no" do
          display "Ok, bye"
          quit
      end
      option "help" do
        display " > HELP SECTION: to QUIT press CTRL + C // To EXPLORE path type answer in lowercase!"
      end
    end
  end 
end   
