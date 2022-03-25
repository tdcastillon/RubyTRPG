require_relative "game"
require_relative "hero"
require_relative "Menu/JobMenu"
require_relative "Menu/MainMenu"

def main()
    game = Game.new()
    hero = Hero.new("Jean")
    game.setHero(hero)
    puts "Choose your class #{hero} !"
     JobMenu(game.getHero())
    MainMenu(game)
end

if __FILE__ == $0
    main()
end