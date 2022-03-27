require_relative "../hero"
require_relative "../Enemy/enemy.rb"
require_relative "../Actions/attack.rb"

require_relative "EnemySelector.rb"
require_relative "SkillMenu.rb"
require_relative "../Screens/enemy.rb"

def battle_menu(game)
    user = ""
    while 1
        case(user)
        when 1
            enemy_chosen = enemy_selector(game.getEnemy)
            if (enemy_chosen == -1)
                puts `clear`
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            else
                attack(game.getHeroes[0], game.getEnemy[enemy_chosen])
                xp = check_life(game.getEnemy, game.getHeroes[0])
                if xp != 0
                    puts "#{game.getHeroes[0]} has gained #{xp} xp!\n"
                end
                game.getHeroes[0].gainXp(xp)
                if game.getEnemy.size == 0
                    puts "You win !!\n"
                    break
                end
                enemy_turn(game)
                sleep 2
                puts `clear`
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            end
        when 2
            valid = SkillMenu(game.getHeroes[0], game.getHeroes[0].GetClass.getSkills, game.getEnemy)
            if !valid
                puts `clear`
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            else
                xp = check_life(game.getEnemy, game.getHeroes[0])
                if xp != 0
                    puts "#{game.getHeroes[0]} has gained #{xp} xp!\n"
                end
                game.getHeroes[0].gainXp(xp)
                if game.getEnemy.size == 0
                    puts "You win !!\n"
                    break
                end
            end
        when 3
            puts "3"
        when 4
            puts "You flee the battle"
            break
        else
            puts `clear`
            puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            sleep(1)
        end
        user = gets.chomp.to_i 
    end
end