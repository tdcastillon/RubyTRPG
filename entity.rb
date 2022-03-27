#noinspection ALL
class Entity
    def initialize(nom="")

        @atk = 1
        @mat = 1
        @def = 1
        @mdf = 1
        @hp = 1
        @max_hp = @hp
        @mp = 1
        @max_mp = @mp
        @lv = 1
        @xp_rate = 1
        @speed = 1
        @entity = ""
    end
    def getDef
        @def
    end
    def setDef(block)
        @def = block
    end
    def getMdf
        @mdf
    end
    def setMdf(mdf)
        @mdf = mdf
    end
    def getAtk
        @atk
    end
    def setAtk(atk)
        @atk = atk
    end
    def getMat
        @mat
    end
    def getMaxMat
        @max_mp
    end
    def setMat(mat)
        @mat = mat
        @max_mp = mat
    end
    def getHP
        @hp
    end
    def getMaxHP
        @max_hp
    end
    def setHp(hp)
        @hp = hp
        @max_hp = hp
    end
    def changeHP(value)
        @hp = @hp + value
        @hp = (@hp > @max_hp) ? @max_mp : @hp
    end
    def getLevel
        @lv
    end
    def setMp(mp)
        @mp = mp
    end
    def getMp
        @mp
    end
    def setXprate(xp_rate)
        @xp_rate = xp_rate
    end
    def LevelUp()
        @atk = @atk * @xp_rate * @level
        @def = @def * @xp_rate * @level
        @mdf = @def * @xp_rate * @level
        @mat = @mat * @xp_rate * @level
        @max_hp = @max_hp * @xp_rate * @level
        @max_mp = @max_mp * @xp_rate * @level
    end
    def getSpeed
        @speed
    end
    def setSpeed(speed)
        @speed = speed
    end
    def getEntity
        @entity
    end
    def to_s
        @nom
    end
end