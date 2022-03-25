require_relative "../Enemy/enemy.rb"
require_relative "../hero"

require_relative "../Menu/BattleMenu.rb"

def Battle_Init(hero)
    puts `clear`
    enemy_list = [WildCat, Slime, GreatCat]
    enemy = []

    if hero.getLv() < 5
        selector = rand 0..(enemy_list.size - 1)
        enemy << enemy_list[selector].new()
    end
    BattleMenu(hero, enemy)
end