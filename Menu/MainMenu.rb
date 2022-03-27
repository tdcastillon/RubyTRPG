require_relative "../hero"

require_relative "../Screens/Status"
require_relative "../Screens/Battle"

def main_menu(game)
    user = ""
    puts("\nMain Menu\n\n1 Battle\n2 Inventory\n3 Status\n4 Quit\nEnter to validate option")
    while 1
        case(user)
        when 1
            battle_init game
        when 2
            puts `clear`
            puts "Option #{user} \n"
            sleep(2)
        when 3
            puts `clear`
            Status game.getHero
        when 4
            puts `clear`
            puts "Thanks for playing the game !"
            sleep(2)
            break
        else
            puts `clear`
            puts "You must choose an option"
            puts("\nMain Menu\n\n1 Battle\n2 Inventory\n3 Status\n4 Quit\nEnter to validate option")
            sleep(2)
        end
        user = gets.chomp.to_i 
    end
end