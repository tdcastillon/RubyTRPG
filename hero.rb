require_relative "Job/job"

require_relative "entity"

class Hero < Entity
    def initialize( nom = "Hero")
        super
        @nom = nom
        @job = Random.new(self)
        @inventory = []
        @fight_number = 0
        @xp = 0
        @entity = "hero"
        @full_xp = @lv * 10
    end

    def to_s
        @nom
    end

    def GetNom
        @nom
    end
    def GetClass
        @job
    end
    def GetLv
        @lv
    end
    def SetClass(test)
        @job = test
    end

    def gainXp(xp)
        @xp += xp
        if @xp >= @full_xp
            left_xp = @full_xp - @xp
            @lv += 1
            puts "#{@nom} is now lv#{@lv} !\n"
            @full_xp = @lv * 10
            @xp = 0
            gainXp(left_xp)
        end
        sleep(1)
    end

    def Status
        puts "NAME : #{@nom} the #{@job}\n\n"
        puts "\t INFOS\n"
        puts "You have #{@xp} for a total of #{@full_xp} to get to lv. #{@lv + 1}"
        puts "You have done #{@fight_number} combat(s) \n\n"
        puts "\t STATS\n"
        puts "HP : #{@hp} / #{@max_hp}\nMP : #{@mp} / #{@max_mp} \nATK : #{@atk}\nMAT : #{@mat}\nDEF : #{@def}\nMDF : #{@mdf}"
    end

    def finish_battle
        @fight_number += 1
    end
end