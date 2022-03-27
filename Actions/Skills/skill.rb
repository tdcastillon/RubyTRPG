class Skill
  def initialize
    super
    @mp_consumption = 1
    @element = "void"
    @description = ""
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

  def to_s
    @nom
  end
end

class DamageSkill < Skill
  def initialize
    super
    @type = "damage"
    @mat_mul = 1
    @mdf_mul = 1
  end
  def use(user, target)
    puts "#{user} use #{@nom} on #{target}!"
    dmg = ((user.getMat * @mat_mul) - (target.getMdf * @mdf_mul)) * -1
    dmg = dmg.round()
    dmg = (dmg > 0) ? 0 : dmg
    target.changeHP(dmg)
    puts "#{user} inflicts #{dmg} to the #{target}. #{target} has now #{target.getHP} PV!"
  end
end

class FireBall < DamageSkill
  def initialize
    super
    @nom = "Fire Ball"
    @mp_consumption = 5
    @element = "fire"
    @description = "The user launch a fire ball !"
    @mat_mul = 1
    @mdf_mul = 0.75
  end
  def use(user, target)
    super
  end
end