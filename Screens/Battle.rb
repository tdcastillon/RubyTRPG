require_relative "../Enemy/enemy.rb"
require_relative "../game"

require_relative "../Menu/BattleMenu.rb"

def battle_init(game)
    puts `clear`
    enemy_list = [WildCat, Slime, GreatCat]
    enemy = []

    if game.getHero.getLevel < 5
        selector = rand 0..(enemy_list.size - 1)
        enemy << enemy_list[selector].new
        puts "#{enemy[0]} appears !"
        sleep(1)
    end
    game.setEnemy(enemy)
    battle_menu game
end