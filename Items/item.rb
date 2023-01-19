class Item
    def initialize
        @name = ""
        @description = ""
        @price = 0
        @type = 0
        @effect_value = 0
        in_battle = false
    end

    def getName
        @name
    end

    def getDescription
        @description
    end

    def getPrice
        @price
    end

    def getSellPrice
        @price / 2
    end

    def getType
        @type
    end

    def getEffectValue
        @effect_value
    end

    def to_s
        @name
    end
end

class HealthItem < Item
    def initialize
        super
        @type = 1
    end

    def use(target)
        target.changeHP(@effect_value)
    end

    def to_s
        @name
    end
end

class ManaItem < Item
    def initialize
        super
        @type = 2
    end
    def use(target)
        target.changeMP(@effect_value)
    end
    def to_s
        @name
    end
end