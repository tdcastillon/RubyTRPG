require_relative "../entity.rb"

class Enemy < Entity
    def initialize
        super
        @atk = 3
        @mat = 3
        @def = 3
        @mdf = 3
        @hp = 10
        @mp = 5
        @entity = "enemy"
    end
    def GetWin
        return @xp_to_win
    end
    def to
        @nom
    end
end

class WildCat < Enemy
    def initialize
        super
        @atk = 5
        @def = 4
        @mat = 1
        @mdf = 1
        @hp = 15
        @max_hp = 15
        @mp = 3
        @max_mp = 3
        @xp_to_win = 4
        @speed = 5
        @nom = "Wild Cat"
    end
end

class Slime < Enemy
    def initialize
        super
        @mat = 5
        @mdf = 4
        @def = 3
        @hp = 12
        @max_hp = @hp
        @mp = 10
        @max_mp = @mp
        @nom = "Slime"
        @speed = 7
        @xp_to_win = 3
    end
end

class GreatCat < Enemy
    def initialize
        super
        @atk = 7
        @mat = 1
        @def = 6
        @mdf = 4
        @hp = 20
        @max_hp = @hp
        @mp = 2
        @max_mp = @mp
        @xp_to_win = 8
        @speed = 1
        @nom = "Great Cat"
    end
end