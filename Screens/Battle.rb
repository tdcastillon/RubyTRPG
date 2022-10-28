require_relative "../Enemy/enemy.rb"
require_relative "../game"
require_relative "../Menu/EnemySelector.rb"
require_relative "../Menu/BattleMenu.rb"

def battle_init(game)
    puts `clear`
    enemy_list = [WildCat, Slime, GreatCat]
    max_lv_to_battle = game.getHeroes[0].GetLv() + 1
    rand_lv_enemy = rand 1..max_lv_to_battle

    if game.getAverageLv < 5
        selector = rand 0..(enemy_list.size - 1)
        game.addEnemy(enemy_list[selector].new)
        puts "#{game.getEnemy[0]} lv.#{rand_lv_enemy} appears !"
        sleep(2 )
    end
    upgrade_lv(game.getEnemy, rand_lv_enemy)
    player_turn game
end