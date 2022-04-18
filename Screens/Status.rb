require_relative "../Menu/MainMenu.rb"
require_relative "../hero"

def PreStatus(heroes)
    puts "Witch hero ?"
    puts heroes.size
    c = ''
    while 1
        case c
        when 1..heroes.size
            is_done = Status(heroes[c - 1])
            if is_done
                return
            end
        when heroes.size + 1
            return
        else
            puts `clear`
            x = 1
            heroes.each do |a|
                puts "#{x}. #{a}\n"
                x += 1
            end
            puts "#{x}. Return\n"
            puts "Press the Hero you want to see the stats !\n"
        end
        c = gets.chomp.to_i
    end
end

def Status(hero)
    hero.Status
    puts "Press enter key to get back to main menu"
    c = gets.chomp
    case c
    when c != ''
        return true
    end
    return true
end