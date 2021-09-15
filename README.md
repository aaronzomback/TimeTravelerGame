# Time-Traveler
![casey-horner-265UjRsLgd8-unsplash 1](https://user-images.githubusercontent.com/63470294/133330968-b3bea8aa-aadf-426f-bf0c-ab705739e6a3.png)
Image by Casey Horner from unsplash.com

## About

Join your travel agent CloudR45 and journey backwards and forwards through the depths of space and time for encounters with historical figures such as Genghis Khan and Napoleon. Who knows maybe all of the information from history really can be contained in a tiny CLI app written in Ruby after all.

## Structure & Design Principles

### Separation of concerns

Keeping the SRP (single-responsibility-principle) in mind, it was important to separate the concerns when building the structure of the game.
The stucture can be divided into 3 classes:

1. [Game Engine](./game_engine.rb)
2. [Game Node](./game_node.rb)
3. [TimeTraveler](./time_traveler.rb)

### Making it readable

Refactoring to DSL (Domain Specific Language). The beauty of Ruby.

For example, instead of:

```
if input == option_drink_19th_century
  p game_over_frozen
  input = prompt.yes?("Would you like to play again?")
    if input == true
      self.run
    else
      abort "Goodbye, come back again soon!" 
    end
elsif input == option_jump_19th_century ...
 ```
 
 We can do this:
 ```
     GameNode.new do
      display WELCOME_MSG_TEXT
        option "yes" do
          display CENTURY_SELECTION_TEXT
            option "13th" do
              display CENTURY_13TH_TEXT
                option "jump" do ...
```              

### Extensibility and Reusability

"Plug and play" ... the Game Engine and Game Node classes serve as the respective motor and elements that make the game run, while the TimeTraveler class is simply the written storyboard and pathways that make the game unique. This allows for TimeTraveler to be easily swapped out for other games if desired.

### Decision Tree

A tree like structure seemed to be a practical solution to structure the data. Each node represents a text display and options, which based on the players' choices, will lead them further down the levels of the tree along the different pathways.

![TimeTraveler Decision Tree 1 (2)](https://user-images.githubusercontent.com/63470294/133317289-014c271b-7f45-41a5-ab17-f90c8d2e4695.png)

## Running and Setup

The CLI application is built on ruby 2.7.0. To run, make sure you have ruby installed and run the following commands to setup:

In root run ```bundle install``` and then ```ruby play.rb``` to start the game.

## Testing

In root run ```rspec``` to run tests.
If you'd also like to see the descriptions of each test as they execute run ```rspec --format doc```.



