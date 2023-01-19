require_relative "../hero"
require_relative "../Enemy/enemy.rb"
require_relative "../Actions/attack.rb"
require_relative "../clear_screen"

require_relative "EnemySelector.rb"
require_relative "SkillMenu.rb"
require_relative "../Screens/enemy.rb"

def player_turn(game)
    game.getHeroes.each do |a|
        battle_menu(game, a)
    end
end

def after_skill(game, hero)
    xp = check_life(game.getEnemy)
    if xp != 0
        puts "#{hero} has gained #{xp} xp!\n"
        hero.finish_battle()
    end
    hero.gainXp(xp)
    if game.getEnemy.size == 0
        puts "You win !!\n"
        return -1
    end
    enemy_turn(game)
end

def battle_menu(game, hero)
    user = ""
    while 1
        case(user)
        when 1
            enemy_chosen = enemy_selector(game.getEnemy)
            if enemy_chosen == -1
                clear_screen
                puts "This is the turn of #{hero}\n"
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            else
                attack(hero, game.getEnemy[enemy_chosen])
                if after_skill(game, hero) == -1
                    break
                end
                sleep 2
                clear_screen
                puts "This is the turn of #{hero}\n"
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            end
        when 2
            valid = SkillMenu(hero, hero.GetClass.getSkills, game.getEnemy)
            if !valid
                clear_screen
                puts "This is the turn of #{hero}\n"
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            else
                if after_skill(game, hero) == -1
                    break
                end
                sleep 2
                clear_screen
                puts "This is the turn of #{hero}\n"
                puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            end
        when 3
            puts "3"
        when 4
            puts "You flee the battle"
            break
        else
            clear_screen
            puts "This is the turn of #{hero}\n"
            puts("\nBattle Menu\n\n1 Attack\n2 Skills\n3 Inventory\n4 Flee\nEnter to validate option")
            sleep(1)
        end
        user = gets.chomp.to_i
    end
end
