require_relative "../Enemy/enemy.rb"
require_relative "../clear_screen"

def enemy_selector(enemy)
    user = ""
    while 1
        case(user)
        when 1..enemy.size
            return (user - 1)
        when enemy.size + 1
            return -1;
        else
            clear_screen
            x = 1
            enemy.each { |a|
                puts "#{x}. #{a}\n"
                x += 1
            }
            puts "#{x}. Cancel"
            puts "Press the number of the enemy you want to attack !\n"
        end
        user = gets.chomp.to_i
    end
    
end

def check_life(enemy)
    index = 0
    hero_xp = 0
    while index != enemy.size
        if enemy[index].getHP <= 0
            puts "#{enemy[index]} is dead"
            hero_xp += enemy[index].GetWin
            enemy.delete_at(index)
            sleep(2)
        else
            index += 1
        end
    end
    return hero_xp
end

def upgrade_lv(enemy, level)
    index = 0
    while index != enemy.size
        enemy[index].LevelUp level
        index += 1
    end
    sleep(4)
end