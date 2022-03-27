class Game
    def initialize
        @heroes = []
        @enemy = []
    end

    def getHeroes
        @heroes
    end
    def getAverageLv
        total_lv = 0
        @heroes.each { |hero|
            total_lv += hero.getLevel
        }
        average_lv = total_lv / @heroes.size
        average_lv.round()
        return average_lv
    end
    def addHero(hero)
        @heroes.push(hero)
    end
    def addEnemy(enemy)
        @enemy.push(enemy)
    end
    def getEnemy
        return @enemy
    end
end