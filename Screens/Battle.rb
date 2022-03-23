require_relative "../Enemy/enemy.rb"

def Battle(hero)
    puts `clear`
    enemy = WildCat.new()
    hero.changeHP(-1 * enemy.getAtk)
    puts "#{hero}'s LP = #{hero.getHP}"
    gets
end