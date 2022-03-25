require_relative "../Enemy/enemy.rb"

def enemy_selector(enemy)
    user = ""
    while 1
        case(user)
        when 1..enemy.size
            return (user - 1)
        else
            puts `clear`
            x = 1
            for a in enemy do
                puts "#{x}. #{a}\n"
                x += 1
            end
            puts "Press the number of the enemy you want to attack !\n"
        end
        user = gets.chomp.to_i
    end
    
end

def checkEnemyLife(enemy)
    index = 0
    hero_xp = 0
    while index != enemy.size()
        if (enemy[index].getHP() <= 0)
            puts "#{enemy[index]} is dead"
            hero_xp += enemy[index].getXpToWin()
            enemy.delete_at(index)
        else
            index += 1
        end
    end
    return hero_xp
end