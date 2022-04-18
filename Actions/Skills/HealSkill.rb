require_relative 'skill'

class Pray < HealSkill
    def initialize
      super
      @target_panel = 2
      @mat_mul = 1
      @element = "light"
      @description = "The user prays the Divinity to heal his wounds"
      @nom = "Pray"
    end
  end