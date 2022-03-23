require_relative "../hero"
require_relative "../Job/job"

def JobMenu(h)
    test = true
    user = ""
    puts("1 Warrior\n2 Mage\n3 Priest\nEnter to validate option")
    while test
        case user
        when 1
            puts `clear`
            puts "You choose to be a Warrior, #{h} !"
            h.SetClass(Warrior.new(h))
            return
        when 2
            puts `clear`
            puts "You choose to be a Mage, #{h} !"
            h.SetClass(Mage.new(h))
            return
        when 3
            puts `clear`
            puts "You choose to be a Priest #{h} !"
            h.SetClass(Priest.new(h))
            return
        else
            puts "You must choose a class #{h} !"
        end
        user = gets.chomp.to_i
    end
end
