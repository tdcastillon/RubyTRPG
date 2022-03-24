require_relative "../Enemy/enemy.rb"

def Battle_Init(hero)
    puts `clear`
    enemy_list = [WildCat, Slime, Donkey]
    enemy = []

    if hero.getLv() < 5
        selector = rand 0..(enemy_list.size - 1)
        enemy << enemy_list[selector].new()
    end
    puts enemy
end