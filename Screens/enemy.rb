require_relative "../Enemy/enemy.rb"
require_relative "../game"

require_relative "../Actions/attack.rb"

def enemy_turn(game)
    game.getEnemy.each { |en|
        x = rand 1 .. game.getHeroes.size
        x = x - 1
        attack(en, game.getHeroes[x])
        if game.getHeroes[0].getHP <= 0
            clear_screen
            puts "Game Over !"
            sleep(3)
            exit 0
        end
    }
end