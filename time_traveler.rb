
require './game_node'

CURRENT_TIME = Time.now.strftime('%d %b %Y %I:%M %p')



WELCOME_MSG_TEXT = " > Welcome TimeTraveler! My name is CloudR45. I was programmed by Aaron Zomback around the foot hills of Beaujolais country in France. I will be your travel agent during this hiring test. Your current local time is #{CURRENT_TIME}."
WELCOME_MSG_OPTION = "press ENTER to continue"

CENTURY_SELECTION_TEXT = " > We have little time to waste, which century would you like to visit today?"
CENTURY_SELECTION_OPTION = ['13th', '19th', '22nd']

CENTURY_13TH_TEXT = " > Welcome to the 13th century! Genghis Khan and his invading Mongols are riding towards you! What do you do? "
CENTURY_13TH_OPTION = ['Jump', 'Run']

CENTURY_19TH_TEXT = " > ZOOM! You're now in the 19th century! I hope you've brought your winter clothes. You've joined forces fighting in Napoleon's army. As you march towards Russia the winter gets colder and colder. What do you do? "
CENTURY_19TH_OPTION = ['Drink vodka', 'Jump']

CENTURY_22ND_TEXT = " > Et voilá! You're now in the 22nd century! It's the year 2163 and Livestream's holographic AI technology is helping you fight invading robots. What do you do?"
CENTURY_22ND_OPTION = ['Help Livestorm fight the robots', 'Switch sides and join the robots']



class TimeTraveler
  def build
    root = Node.new(WELCOME_MSG_TEXT, WELCOME_MSG_OPTION)

    choose_century_node = root.create_child(CENTURY_SELECTION_TEXT, CENTURY_SELECTION_OPTION)
    root.add_child(choose_century_node)

    century_13th_node = choose_century_node.create_child(CENTURY_13TH_TEXT, CENTURY_13TH_OPTION)
    choose_century_node.add_child(century_13th_node)

    century_19th_node = choose_century_node.create_child(CENTURY_19TH_TEXT, CENTURY_19TH_OPTION)
    choose_century_node.add_child(century_19th_node)

    century_22nd_node = choose_century_node.create_child(CENTURY_22ND_TEXT, CENTURY_22ND_OPTION)
    choose_century_node.add_child(century_22nd_node)

  
    return root
  end 
end   