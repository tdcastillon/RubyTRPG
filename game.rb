class Game
    def initialize()
        @hero = ""
        @enemy = ""
    end

    def getHero
        return @hero
    end
    def setHero(hero)
        @hero = hero
    end
    def setEnemy(enemy)
        @enemy = enemy
    end
    def getEnemy()
        return @enemy
    end
end