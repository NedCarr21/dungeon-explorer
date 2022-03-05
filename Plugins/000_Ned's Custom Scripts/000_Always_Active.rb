Events.onStepTaken += proc do |sender, e|
  $game_variables[26] = $game_player.x
  $game_variables[27] = $game_player.y
end

Events.onStepTaken += proc do |sender, e|
  if $game_variables[99] >= 10 # Explorer Counter
    $game_variables[86] += 1 # Times Entered Dungeon
    $game_variables[99] = 0
  end
end

Events.onStepTaken += proc do |sender, e|
 if ($game_map.terrain_tag($game_player.x, $game_player.y).id_number == 2) && (rand(100) == 1) # If in grass and 1/100 chance
   pbReceiveItem(:BIRDSEED) # Obtain bird seed
 end
end
