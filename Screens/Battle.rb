require_relative "../Enemy/enemy.rb"
require_relative "../game"

require_relative "../Menu/BattleMenu.rb"

def Battle_Init(game)
    puts `clear`
    enemy_list = [WildCat, Slime, GreatCat]
    enemy = []

    if game.getHero().getLv() < 5
        selector = rand 0..(enemy_list.size - 1)
        enemy << enemy_list[selector].new()
    end
    game.setEnemy(enemy)
    BattleMenu(game)
end