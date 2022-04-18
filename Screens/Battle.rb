require_relative "../Enemy/enemy.rb"
require_relative "../game"

require_relative "../Menu/BattleMenu.rb"

def battle_init(game)
    puts `clear`
    enemy_list = [WildCat, Slime, GreatCat]
    enemy = []

    if game.getAverageLv < 5
        selector = rand 0..(enemy_list.size - 1)
        game.addEnemy(enemy_list[selector].new)
        puts "#{game.getEnemy[0]} appears !"
        sleep(2 )
    end
    player_turn game
end