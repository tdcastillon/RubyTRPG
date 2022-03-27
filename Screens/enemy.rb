require_relative "../Enemy/enemy.rb"
require_relative "../game"

require_relative "../Actions/attack.rb"

def enemy_turn(game)
    game.getEnemy.each { |en|
        attack(en, game.getHero)
        if game.getHero.getHP <= 0
            puts `clear`
            puts "Game Over !"
            sleep(3)
            exit 0
        end
    }
end