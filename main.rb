require_relative "hero"
require_relative "Menu/JobMenu"
require_relative "Menu/MainMenu"

def main()
    hero = Hero.new("Jean")
    puts "Choose your class #{hero} !"
    JobMenu(hero)
    MainMenu(hero)
end

if __FILE__ == $0
    main()
end