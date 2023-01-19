class Game
    def initialize
        @heroes = []
        @enemy = []
        @inventory = []
        @current_money = 0
    end

    ### Heroes Methods ###
    def getHeroes
        @heroes
    end
    def getAverageLv
        total_lv = 0
        @heroes.each { |hero|
            total_lv += hero.getLevel
        }
        average_lv = total_lv / @heroes.size
        average_lv.round()
        return average_lv
    end
    def addHero(hero)
        @heroes.push(hero)
    end

    ### Enemy Methods ###

    def addEnemy(enemy)
        @enemy.push(enemy)
    end
    def getEnemy
        return @enemy
    end

    ### Inventory Methods ###

    ### inventory = {item => quantity}
    def getInventory
        @inventory
    end

    def addInventory(item)
       is_inventory = false
       if @inventory.size == 0
            @inventory.push({item => 1})
       else
            @inventory.each { |inventory_item|
                if inventory_item.keys[0] == item
                    is_inventory = true
                    inventory_item[item] += 1
                end
            }
            if !is_inventory
                @inventory.push({item => 1})
            end
       end
    end

    def removeInventory(item)
        @inventory.each { |inventory_item|
            if inventory_item.keys[0] == item
                if inventory_item[item] == 1
                    @inventory.delete(inventory_item)
                else
                    inventory_item[item] -= 1
                end
            end
        }
    end

    ### Money Methods ###

    def getCurrentMoney
        @current_money
    end

    def addMoney(money)
        @current_money += money
    end

    def sellItem(item)
        @current_money += item.getSellPrice
        removeInventory(item)
    end

    def sellAllItems
        @inventory.each { |inventory_item|
            @current_money += inventory_item.keys[0].getSellPrice * inventory_item[inventory_item.keys[0]]
        }
        @inventory.clear()
    end
end