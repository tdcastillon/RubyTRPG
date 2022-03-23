class Entity
    def initialize(nom="")

        @atk = 1
        @mat = 1
        @def = 1
        @mdf = 1
        @hp = 1
        @lv = 1
    end
    def getDef
        return @def
    end
    def setDef(block)
        @def = block
    end
    def getMdf
        return @mdf
    end
    def setMdf(mdf)
        @mdf = mdf
    end
    def getAtk
        return @atk
    end
    def setAtk(atk)
        @atk = atk
    end
    def getMat
        return @mat
    end
    def setMat(mat)
        @mat = mat
    end
    def getHP
        return @hp
    end
    def setHp(hp)
        @hp = hp
    end
    def changeHP(value)
        @hp = @hp + value
    end
    def to_s
        return @nom
    end
end