def tokensLightrand
  case rand(12)
    #1 (33.33%)
  when 0..3;
    $Trainer.money += 1
    pbMessage(_INTL("You found a token."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
    #2 (25.00%)
  when 4..6;
    $Trainer.money += 2
    pbMessage(_INTL("You found 2 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
    #3 (16.67% chance)
  when 7..8;
    $Trainer.money += 3
    pbMessage(_INTL("You found 3 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
    #4 (8.33% chance)
  when 9;
    $Trainer.money += 4
    pbMessage(_INTL("You found 4 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
    #5 (16.67% chance)
  when 10..11;
    pbMessage(_INTL("The box seems to be empty."))
  end
  pbWait(5)
end

def tokensLightboxrand
  case rand(10)
    #1 (40%)
  when 0..3;
    $Trainer.money += 1
    pbMessage(_INTL("You found a token."))
    #2 (30%)
  when 4..6;
    $Trainer.money += 2
    pbMessage(_INTL("You found 2 tokens."))
    #3 (20%)
  when 7..8;
    $Trainer.money += 3
    pbMessage(_INTL("You found 3 tokens."))
    #4 (10%)
  when 9;
    $Trainer.money += 4
    pbMessage(_INTL("You found 4 tokens."))
  end
  pbMessage(_INTL("You put the tokens in your pocket for later."))
  pbWait(5)
end

def tokensHeavyrand
  case rand(12)
  when 0;
    $Trainer.money += 15
    pbMessage(_INTL("You found 15 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 1;
    $Trainer.money += 16
    pbMessage(_INTL("You found 16 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 2;
    $Trainer.money += 17
    pbMessage(_INTL("You found 17 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 3;
    $Trainer.money += 18
    pbMessage(_INTL("You found 18 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 4;
    $Trainer.money += 19
    pbMessage(_INTL("You found 19 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 5;
    $Trainer.money += 20
    pbMessage(_INTL("You found 20 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 6;
    $Trainer.money += 21
    pbMessage(_INTL("You found 21 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 7;
    $Trainer.money += 22
    pbMessage(_INTL("You found 22 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 8;
    $Trainer.money += 25
    pbMessage(_INTL("You found 25 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 9;
    $Trainer.money += 30
    pbMessage(_INTL("You found 30 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  when 10..11;
    $Trainer.money+=0
    pbMessage(_INTL("The boxes seems to be empty."))
  end
  pbWait(5)
end

def tokensHeavyboxrand
  case rand(10)
  when 0;
    $Trainer.money += 15
    pbMessage(_INTL("You found 15 tokens."))
  when 1;
    $Trainer.money += 16
    pbMessage(_INTL("You found 16 tokens."))
  when 2;
    $Trainer.money += 17
    pbMessage(_INTL("You found 17 tokens."))
  when 3;
    $Trainer.money += 18
    pbMessage(_INTL("You found 18 tokens."))
  when 4;
    $Trainer.money += 19
    pbMessage(_INTL("You found 19 tokens."))
  when 5;
    $Trainer.money += 20
    pbMessage(_INTL("You found 20 tokens."))
  when 6;
    $Trainer.money += 21
    pbMessage(_INTL("You found 21 tokens."))
  when 7;
    $Trainer.money += 22
    pbMessage(_INTL("You found 22 tokens."))
  when 8;
    $Trainer.money += 25
    pbMessage(_INTL("You found 25 tokens."))
  when 9;
    $Trainer.money += 30
    pbMessage(_INTL("You found 30 tokens."))
  end
  pbMessage(_INTL("You put the tokens in your pocket for later."))
  pbWait(5)
end

def tokensOnefifty
  case rand(2)
  when 0;
    $Trainer.money += 0
    pbMessage(_INTL("You obtained no tokens."))
  when 1;
    $Trainer.money += 2
    pbMessage(_INTL("You obtained 2 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  end
  pbWait(5)
end

def tokensTenfifty
  case rand(2)
  when 0;
    $Trainer.money += 0
    pbMessage(_INTL("You obtained no tokens."))
  when 1;
    $Trainer.money += 20
    pbMessage(_INTL("You obtained 20 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  end
  pbWait(5)
end

def tokensHundredfifty
  case rand(2)
  when 0;
    $Trainer.money += 0
    pbMessage(_INTL("You obtained no tokens."))
  when 1;
    $Trainer.money += 200
    pbMessage(_INTL("You obtained 200 tokens."))
    pbMessage(_INTL("You put the tokens in your pocket for later."))
  end
  pbWait(5)
end

def tokensOnegamble
  if $Trainer.money >= 1
    $Trainer.money -= 1
    pbMessage(_INTL("You bet 1 tokens."))
    tokensOnefifty
  else
    pbMessage(_INTL("You don't have enough tokens."))
  end
end

def tokensTengamble
  if $Trainer.money >= 10
    $Trainer.money -= 10
    pbMessage(_INTL("You bet 10 tokens."))
    tokensTenfifty
  else
    pbMessage(_INTL("You don't have enough tokens."))
  end
end

def tokensHundredgamble
  if $Trainer.money >= 100
    $Trainer.money -= 100
    pbMessage(_INTL("You bet 100 tokens."))
    tokensHundredfifty
  else
    pbMessage(_INTL("You don't have enough tokens."))
  end
end

def randGem
  case rand(5)
    when 0; vRI("RedGem",1)
    when 1; vRI("OrangeGem",1)
    when 2; vRI("YellowGem",1)
    when 3; vRI("GreenGem",1)
    when 4; vRI("BlueGem",1)
    when 5; vRI("PurpleGem",1)
  end
end

def randtokenShop
  $game_variables[98] = rand(99) + 1

  if $game_variables[98] == 1
    pbReceiveItem(:MASTERBALL)   #1%
  elsif $game_variables[98] == 2
    pbReceiveItem(:BEASTBALL)    #1%
  elsif $game_variables[98] <= 13
    pbReceiveItem(:LOOTBOXTOKEN) #11%
  elsif $game_variables[98] <= 53
    pbReceiveItem(:POKEBALL)     #40%
  elsif $game_variables[98] <= 93
    pbReceiveItem(:POTION)       #40%
  else $game_variables[98] <= 100
    randGem                             #7%
  end
  $game_variables[98] = 0
end
