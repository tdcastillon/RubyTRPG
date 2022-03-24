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
end

class WildCat < Enemy
    def initialize()
        super
        @mat = 1
        @mdf = 1
        @hp = 15
        @nom = "Wild Cat"
    end
end

class Slime < Enemy
    def initialize()
        super
        @mat = 5
        @mdf = 4
        @nom = "Slime"
    end
end

class Donkey < Enemy
    def initialize()
        super
        @atk = 1
        @mat = 1
        @def = 1
        @mdf = 1
        @hp = 1
        @nom = "Donkey"
    end
end