require_relative "../hero"
require_relative "../Enemy/enemy.rb"
require_relative "../Actions/attack.rb"

def BattleMenu(game)
    puts `clear`
    puts("\nBattle Menu\n\n1 Attack\n2 Defense\n3 Inventory\n4 Flee\nEnter to validate option")
    user = gets.chomp.to_i
    while 1
        case(user)
        when 1
            game.getEnemy()[0] = attack(game.getHero(), game.getEnemy()[0])
            if game.getEnemy().size() == 0
                break
            end
            sleep(3)
            puts `clear`
            puts("\nBattle Menu\n\n1 Attack\n2 Defense\n3 Inventory\n4 Flee\nEnter to validate option")
        when 2
            puts "2"
        when 3
            puts "3"
        when 4
            puts "4"
        else
            puts `clear`
            puts "You must choose an option"
            sleep(1)
        end
        user = gets.chomp.to_i 
    end
end