def healingLoot
  $game_variables[101] = rand(50) + 1

  if $game_variables[101] == 1
    Kernel.pbReceiveItem(:HEALTHSEVEN)
  elsif $game_variables[101] <=4
    Kernel.pbReceiveItem(:HEALTHSIX)
  elsif $game_variables[101] <= 12
    Kernel.pbReceiveItem(:HEALTHFIVE)
  elsif $game_variables[101] <= 20
    Kernel.pbReceiveItem(:HEALTHFOUR)
  elsif $game_variables[101] <= 30
    Kernel.pbReceiveItem(:HEALTHTHREE)
  elsif $game_variables[101] <= 40
    Kernel.pbReceiveItem(:HEALTHTWO)
  else
    Kernel.pbReceiveItem(:HEALTHONE)
  end
end



def ballLoot
  $game_variables[102] = rand(50) + 1

  if $game_variables[102] == 1
    Kernel.pbReceiveItem(:BALLSSEVEN)
  elsif $game_variables[102] <=4
    Kernel.pbReceiveItem(:BALLSSIX)
  elsif $game_variables[102] <= 12
    Kernel.pbReceiveItem(:BALLSFIVE)
  elsif $game_variables[102] <= 20
    Kernel.pbReceiveItem(:BALLSFOUR)
  elsif $game_variables[102] <= 30
    Kernel.pbReceiveItem(:BALLSTHREE)
  elsif $game_variables[102] <= 40
    Kernel.pbReceiveItem(:BALLSTWO)
  else
    Kernel.pbReceiveItem(:BALLSONE)
  end
end


def lootbox
  case rand(2)
  when 0; healingLoot
  when 1; ballLoot
  end
end

#Loot box token trade in
def tokentrade
  itemQty = $PokemonBag.pbQuantity(:LOOTBOXTOKEN)
    if itemQty >= 1
        Kernel.pbMessage(_INTL("It appears you have a loot box token. Here, I'll trade that with you."))
        $PokemonBag.pbDeleteItem(:LOOTBOXTOKEN)
        lootbox
    else
        Kernel.pbMessage(_INTL("It appears you don't have any loot box tokens with you, you can find them scattered in the dungeon at random, so get exploring!"))
    end
end
