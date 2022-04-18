require_relative "../hero"

require_relative "../Actions/Skills/Damage"
require_relative "../Actions/Skills/HealSkill"

class Random
    def initialize(actor)
        actor.setAtk 4
        actor.setMat 4
        actor.setMdf 4
        actor.setDef 4
        actor.setHp 15
        actor.setMp 6
        @skills = []
    end
    def getSkills
        @skills
    end
end

# Various jobs available

class Priest < Random
    def initialize(actor)
        super
        actor.setMat 8
        actor.setMdf 6
        actor.setAtk 3
        actor.setDef 8
        actor.setMp 15
        actor.setSpeed 9
        @skills = [Pray.new]
    end
    def to_s
        "Priest"
    end
end

class Warrior < Random
    def initialize(actor)
        super
        actor.setAtk 7
        actor.setDef 7
        actor.setHp 25
        actor.setMp 3
        actor.setSpeed 3
    end
    def to_s
        "Warrior"
    end
end

class Mage < Random
    def initialize(actor)
        super
        actor.setMat 10
        actor.setMdf 10
        actor.setHp 15
        actor.setMp 15
        actor.setSpeed 6
        @skills = [FireBall.new]
    end
    def to_s
        "Mage"
    end
end