#noinspection ALL
class Entity
    def initialize(nom="")

        @atk = 1
        @mat = 1
        @def = 1
        @mdf = 1
        @hp = 1
        @mp = 1
        @lv = 1
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
    def setMat(mat)
        @mat = mat
    end
    def getHP
        @hp
    end
    def setHp(hp)
        @hp = hp
    end
    def changeHP(value)
        @hp = @hp + value
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
    def to_s
        @nom
    end
end