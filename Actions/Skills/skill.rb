###
# Target_Panel
# 0 : No one
# 1 : Enemy
# 2 : Users
# 3 : Everyone

class Skill
  def initialize
    super
    @mp_consumption = 1
    @element = "void"
    @description = ""
    @target_panel = 0
    @mat_mul = 1
  end
  def getStatus
    puts "#{@nom} is a #{@element}'s #{@type} skill. It consumes #{@mp_consumption} mp !"
  end
  def getDescription
    @description
  end
  def getConsumption
    @mp_consumption
  end
  def getType
    @type
  end
  def GetTargetPanel
    @target_panel
  end

  def to_s
    @nom
  end
end

class DamageSkill < Skill
  def initialize
    super
    @type = "damage"
    @mdf_mul = 1
  end
  def use(user, target)
    puts "#{user} use #{@nom} on #{target}!"
    dmg = ((user.getMat * @mat_mul) - (target.getMdf * @mdf_mul)) * -1
    dmg = dmg.round()
    dmg = (dmg > 0) ? 0 : dmg
    target.changeHP(dmg)
    hp_target = (target.getHP <= 0) ? 0 : target.getHP
    puts "#{user} inflicts #{dmg} to the #{target}. #{target} has now #{hp_target} PV!"
  end
end

class HealSkill < Skill
  def initialize
    super
    @type = "heal"
  end
  def use(user, target)
    puts "#{user} use #{@nom} on #{target}!"
    heal_power = user.getMat * @mat_mul
    heal_power = heal_power.round()
    target.changeHP(heal_power)
    puts "#{user} has healed #{target}. #{target} has regained #{heal_power} HP and now has #{target.getHP} PV!"
  end
end