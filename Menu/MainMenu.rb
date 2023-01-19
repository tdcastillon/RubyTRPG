require_relative "../hero"


require_relative "../Screens/Battle"
require_relative "./InventoryMenu"
require_relative "../Screens/Status"

require_relative "../clear_screen"

def main_menu(game)
    user = ""
    while 1
        case(user)
        when 1
            battle_init game
        when 2
            clear_screen
            Inventory game.getInventory
        when 3
            clear_screen
            PreStatus game.getHeroes
        when 4
            clear_screen
            puts "Thanks for playing the game !"
            sleep(2)
            break
        else
            clear_screen
            puts "You must choose an option"
            puts("\nMain Menu\n\n1 Battle\n2 Inventory\n3 Status\n4 Quit\nEnter to validate option")
            sleep(2)
        end
        user = gets.chomp.to_i 
    end
end