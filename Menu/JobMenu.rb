require_relative "../hero"
require_relative "../Job/job"
require_relative "../clear_screen"

def job_menu(h)
    user = ""
    while 1
        case user
        when 1
            clear_screen
            puts "You choose to be a Warrior, #{h} !"
            h.SetClass(Warrior.new(h))
            return
        when 2
            clear_screen
            puts "You choose to be a Mage, #{h} !"
            h.SetClass(Mage.new(h))
            return
        when 3
            clear_screen
            puts "You choose to be a Priest #{h} !"
            h.SetClass(Priest.new(h))
            return
        else
            clear_screen
            puts "Choose a class #{h} !"
            sleep(1)
            puts("1 Warrior\n2 Mage\n3 Priest\nEnter to validate option")

        end
        user = gets.chomp.to_i
    end
end
