require_relative "game"
require_relative "hero"
require_relative "Menu/JobMenu"
require_relative "Menu/MainMenu"

def main
    game = Game.new
    heroes = game.getHeroes
    puts "Enter your name, Hero\n"
    user_name = gets.chomp.to_s
    hero = (user_name != "") ? Hero.new(user_name) : Hero.new
    game.addHero(hero)
    job_menu game.getHeroes[0]
    main_menu game
end

if __FILE__ == $0
    main
end