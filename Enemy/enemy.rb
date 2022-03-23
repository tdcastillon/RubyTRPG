require_relative "../entity.rb"

class Enemy < Entity
    def initialize()
        super
        @atk = 3
        @mat = 3
        @def = 3
        @mdf = 3
        @hp = 10
        @lv = 1
    end
end

class WildCat < Enemy
    def initialize()
        super
        @mat = 1
        @mdf = 1
        @nom = "Wild Cat"
    end
end