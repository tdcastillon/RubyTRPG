require_relative "../Menu/MainMenu.rb"
require_relative "../hero"

def Status(hero)
    hero.Status
    puts "Press enter key to get back to main menu"
    c = gets.chomp
    case c
    when c != ''
        return
    end
end