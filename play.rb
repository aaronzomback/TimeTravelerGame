require './game_engine'
require './time_traveler'


# initialize game
game = TimeTraveler.new

# build the decision tree
build_game = game.build

# plug the decision tree into the game engine
engine = GameEngine.new(build_game)

# let 'er rip!
engine.run