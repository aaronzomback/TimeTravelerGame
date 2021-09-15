require './game_node'

CURRENT_TIME = Time.now.strftime('%d %b %Y %I:%M %p')

class TimeTraveler
  def build

    play_again = TimeTraveler.new

    GameNode.new do
    

      display %{
        > Welcome TimeTraveler! My name is CloudR45. I was programmed 
        by Aaron Zomback around the foot hills of Beaujolais country in France. 
        I will be your travel agent during this hiring test. 
        Your current local time is #{CURRENT_TIME}.
        Would you like to continue?"
      }
    
      option "yes" do
        display %{
          > We have little time to waste, 
          which century would you like to visit today?
        }
          option "13th" do
            display %{
              > Welcome to the 13th century! Genghis Khan and his 
              invading Mongols are riding towards you! What do you do?
            }
              option "jump" do
                display %{
                  > ZOOM! You're now in the 19th century! 
                  I hope that you've brought your winter clothes. 
                  You've joined forces fighting in Napoleon's army. 
                  As you march towards Russia the winter 
                  gets colder and colder. 
                  What do you do?
                }
                  option "drink vodka" do
                    display %{
                      > G A M E O V E R...
                      You stumbled into the snow and froze to death. 
                      Would you like to play again?
                    }
                      option "yes" do
                        play_again
                      end
                        option "no" do
                          display "Au revoir!"
                          quit
                      end                   
                    end 
                    option "jump" do
                      display %{
                        > Et voilá! 
                        You're now in the 22nd century! It's the year 2163 
                        and Livestream's holographic AI technology is 
                        helping you fight invading robots. 
                        What do you do?
                      }
                        option "fight" do
                          display %{
                            > Congratulations you've won! 
                            You helped Livestorm defeat the invading robots! 
                            Would you like to play again?
                          }
                            option "yes" do
                              play_again
                            end
                            option "no" do
                            display "Au revoir!"
                            quit
                              end      
                            end 
                            option "hide" do 
                              display %{
                                > G A M E O V E R. 
                                There's no time for cowards! 
                                Would you like to play again?
                              }
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
                      display %{
                        > G A M E O V E R ... 
                        you've been run over and are now flat as a pancake. 
                        Would you like to play again?
                      }
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
                  display %{
                    > ZOOM! You're now in the 19th century! 
                  I hope that you've brought your winter clothes. 
                  You've joined forces fighting in Napoleon's army. 
                  As you march towards Russia the winter 
                  gets colder and colder. 
                  What do you do?
                  }
                    option "jump" do
                      display %{
                        > Et voilá! You're now in the 22nd century! It's the year 2163 
                        and Livestream's holographic AI technology is helping you fight invading robots. 
                        What do you do?
                      }
                        option "hide" do
                          display %{
                            > G A M E O V E R. 
                            There's no time for cowards! 
                            Would you like to play again?
                          }
                            option "yes" do
                              play_again
                            end
                            option "no" do
                              display "Au revoir!"
                              quit
                            end     
                        end 
                        option "fight" do
                          display %{
                            > Congratulations you've won! 
                            You helped Livestorm defeat the invading robots! 
                            Would you like to play again?
                          }
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
                      display %{
                        > G A M E O V E R...
                        You stumbled into the snow and froze to death. 
                        Would you like to play again?
                      }
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
                  display %{
                    > Et voilá! 
                    You're now in the 22nd century! 
                    It's the year 2163 and Livestream's 
                    holographic AI technology is helping 
                    you fight invading robots. 
                    What do you do?
                  }
                    option "fight" do
                      display %{
                        > Congratulations you've won! 
                        You helped Livestorm defeat the invading robots! 
                        Would you like to play again?
                      }
                      option "yes" do
                        play_again
                      end
                      option "no" do
                        display "Au revoir!"
                        quit
                      end      
                    end
                    option "hide" do
                      display %{
                        > G A M E O V E R. 
                        There's no time for cowards! 
                        Would you like to play again?
                      }
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
