#noinspection ALL
require_relative "../hero"
require_relative "../Enemy/enemy.rb"

def attack(init, target)
    damage = (init.getAtk * -2) + target.getDef
    damage = (damage > 0) ? 0 : damage
    target.changeHP(damage)

    targetHP = (target.getHP < 0) ? 0 : target.getHP
    puts "#{target} takes #{damage} and has now #{targetHP} HP left."
end