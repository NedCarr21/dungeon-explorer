# Pokedex Tracking
def pokedexTrack
  $game_variables[96] = $Trainer.pokedexOwned(0)
end

def levelcheck
        $game_variables[98] = 0
    x = pbBalancedLevel($Trainer.party)
          y = x - 2 + rand(5) - rand(5)
      if y > 66
        $game_variables[98] = 5
      elsif y > 56
        $game_variables[98] = 4
      elsif y > 36
        $game_variables[98] = 3
      elsif y > 16
        $game_variables[98] = 2
      else
        $game_variables[98] = 1
      end
end
