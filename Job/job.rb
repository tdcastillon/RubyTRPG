require_relative "../hero"

class Random
    def initialize(actor)
        actor.setAtk(4)
        actor.setMat(4)
        actor.setMdf(4)
        actor.setDef(4)
        actor.setHp(15)
    end
end

# Various jobs avalaible

class Priest < Random
    def initialize(actor)
        super
        actor.setMat(8)
        actor.setMdf(6)
        actor.setAtk(3)
    end
    def to_s
        return "Priest"
    end
end

class Warrior < Random
    def initialize(actor)
        super
        actor.setAtk(10)
        actor.setDef(10)
        actor.setHp(25)
    end
    def to_s
        return "Warrior"
    end
end

class Mage < Random
    def initialize(actor)
        super
        actor.setMat(10)
        actor.setMdf(10)
        actor.setHp(15)
    end
    def to_s
        return "Mage"
    end
end