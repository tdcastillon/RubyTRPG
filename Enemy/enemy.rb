require_relative "../entity.rb"

class Enemy < Entity
    def initialize()
        super
        @atk = 3
        @mat = 3
        @def = 3
        @mdf = 3
        @hp = 10
    end
    def getXpToWin()
        return @xp_to_win
    end
end

class WildCat < Enemy
    def initialize()
        super
        @mat = 1
        @mdf = 1
        @hp = 15
        @xp_to_win = 4
        @nom = "Wild Cat"
    end
end

class Slime < Enemy
    def initialize()
        super
        @mat = 5
        @mdf = 4
        @nom = "Slime"
        @xp_to_win = 3
    end
end

class GreatCat < Enemy
    def initialize()
        super
        @atk = 15
        @mat = 1
        @def = 6
        @mdf = 4
        @hp = 20
        @xp_to_win = 8
        @nom = "Donkey"
    end
end