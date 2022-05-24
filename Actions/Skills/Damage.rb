require_relative 'skill'

class FireBall < DamageSkill
  def initialize
    super
    @element = "fire"
    @nom = "Fire Ball"
    @description = "user launches a fire ball"
    @mat_mul = 1.5
    @mdf_mul = 0.5
    @target_panel = 1
    @mp_consumption = 3
  end
end