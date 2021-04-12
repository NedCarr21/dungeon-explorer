################################################################################
# Pokemon Level Balancing
# By Umbreon
################################################################################
# Balances any and all pokemon's levels towards the player's party level.
#
# NOTE: This won't affect any pokemon the player owns.
#
# To use: simply activate Switch Number X
#  (X = the number listed After "Switch = ", default is switch number 37.)
#
#
################################################################################
Leveling_Balance_Switch = 97

module LevelBalance
  Switch = 97 # The switch used to activate/deactivate the level balancing
end

class PokeBattle_Pokemon

  alias balanced_level_init initialize

  def initialize(species,level,player=nil,withMoves=true)

    if $game_switches[97]==true
      level = pbBalancedLevel($Trainer.party)
      if level > 950
        level = 945 + rand(5)
      else
      level = level - 2 + rand(5) - rand(5)
      end
    end

    if $game_switches[98]==true
      level = pbBalancedLevel($Trainer.party)
      level = level - 2 + rand(7)
    end

    balanced_level_init(species, level, player, withMoves)

  end
end
