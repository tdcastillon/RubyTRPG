require_relative "../hero"
require_relative "../Enemy/enemy.rb"

def attack(hero, enemy)
    puts `clear`
    if enemy.size == 1
        damage = (-1) * hero.getAtk() + enemy[0].getDef()
        damage = (damage > 0) ? 0 : damage
        enemy[0].changeHP(damage);
        if (enemy[0].getHP() <= 0)
            puts "#{enemy[0]} is dead !! No enemy left ! You WIN !!"
            enemy.delete_at(0)
            return enemy
        else
            puts "#{enemy[0]} takes #{hero.getAtk()} dmg. #{enemy[0]} has #{enemy[0].getHP} HP left."
        end
    end
    sleep(4)
    return enemy
end