require_relative 'EnemySelector.rb'

def SkillMenu(hero, skills, enemies)
  user_input = ""
  while 1
    case(user_input)
    when 1..skills.size
      is_done = descriptionMenu(skills[user_input - 1], hero, enemies)
      if is_done
        break
      end
    when skills.size + 1
      return false
    else
      puts `clear`
      x = 1
      skills.each do |a|
        puts "#{x}. #{a}\n"
        x += 1
      end
      puts "#{x}. Return\n"
      puts "Press the skill you want to use !\n"
    end
    user_input = gets.chomp.to_i
  end
  return true
end

def descriptionMenu(chosen_skill, hero, enemies)
  if hero.getMp < chosen_skill.getConsumption
    puts "You don't have enough MP !"
    sleep 2
    return
  end
  user_input = ""
  while 1
    case(user_input)
    when 1
      value = launch_skill(chosen_skill, hero, enemies)
      if value == -1
        return
      end
      return true
    when 2
      return
    else
      puts `clear`
      puts chosen_skill.getDescription
      puts "1. Use\n2. Return"
    end
    user_input = gets.chomp.to_i
  end
end

def launch_skill(chosen_skill, hero, enemies)
  case(chosen_skill.GetTargetPanel)
  when 0
    return -1
  when 1
    enemy_chosen = enemy_selector(enemies)
    if enemy_chosen == -1
      return -1
    end
    chosen_skill.use(hero, enemies[enemy_chosen])
  when 2
    return -1
  when 3
    return -1
  end
end