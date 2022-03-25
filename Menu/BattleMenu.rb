require_relative "../hero"
require_relative "../Enemy/enemy.rb"
require_relative "../Actions/attack.rb"

require_relative "EnemySelector.rb"

def BattleMenu(game)
    user = ""
    while 1
        case(user)
        when 1
            enemy_chosen = enemy_selector(game.getEnemy())
            game.getEnemy()[enemy_chosen] = attack(game.getHero(), game.getEnemy()[enemy_chosen])
            xp = checkEnemyLife(game.getEnemy())
            if (xp != 0)
                puts "#{game.getHero()} has gained #{xp} xp!\n"
            game.getHero().gainXp(xp)
            if game.getEnemy().size() == 0
                puts "You win !!\n"
                break
            end
            sleep(3)
            puts `clear`
            puts("\nBattle Menu\n\n1 Attack\n2 Inventory\n3 Flee\nEnter to validate option")
        when 2
            puts "2"
        when 3
            puts "You flee the battle"
            break
        else
            puts `clear`
            puts("\nBattle Menu\n\n1 Attack\n2 Inventory\n3 Flee\nEnter to validate option")
            sleep(1)
        end
        user = gets.chomp.to_i 
    end
end