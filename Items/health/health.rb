require_relative '../item'

class Apple < Item
    def initialize
        super
        @name = "Apple"
        @description = "A delicious apple that restores 10 HP."
        @price = 2
        @effect_value = 10
        in_battle = true
    end
end

class CrackingRock < Item
    def initialize
        super
        @name = "Cracking Rock"
        @description = "A rock that deals 20 damage to the enemy."
        @price = 6
        @effect_value = -20
        in_battle = true
    end
end