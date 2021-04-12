# Pokedex Tracking
def pokedexTrack
  $game_variables[96] = $Trainer.pokedexOwned(0)
end

def levelcheck
        $game_variables[98]==0
    x = pbBalancedLevel($Trainer.party)
          x = x - 2 + rand(5) - rand(5)
      if x > 66
        $game_variables[98]==5
      elsif x > 56
        $game_variables[98]==4
      elsif x > 36
        $game_variables[98]==3
      elsif x > 16
        $game_variables[98]==2
      else
        $game_variables[98]==1
      end
end
    
