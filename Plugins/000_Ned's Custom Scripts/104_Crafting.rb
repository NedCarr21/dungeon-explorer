RECIPES=[
[:TM01,1,[:PURPLEGEM,3],nil],
[:TM02,1,[:REDGEM,2],[:BLUEGEM,1]],
[:TM03,1,[:PURPLEGEM,2],nil],
[:TM04,1,[:WARMGEM,1],[:PURPLEGEM,1]],
[:TM05,1,[:GREENGEM,1],nil],
[:TM06,1,[:BLUEGEM,1],[:PURPLEGEM,1]],
[:TM07,1,[:BLUEGEM,1],nil],
[:TM08,1,[:REDGEM,2],[:YELLOWGEM,1]],
[:TM09,1,[:REDGEM,2],[:PURPLEGEM,1]],
[:TM10,1,[:GREENGEM,2],nil],
[:TM11,1,[:REDGEM,2],nil],
[:TM12,1,[:GREENGEM,2],[:ORANGEGEM,1]]
]

def tmcrafting
   tmnum = 0
   tmnum = pbEnterText(_INTL("Which TM would you like to craft?"),2,2).to_i
   $game_variables[99] = tmnum - 1

   pbMessage(_INTL("{1}",tmnum))

   if tmnum != 0
      if tmnum < 10
        tmnum = sprintf '%02d', tmnum
      end
        machinename = eval("PBMoves.getName(pbGetMachine(:TM#{tmnum}))")
        if pbConfirmMessage(_INTL("Would you like to craft TM{1} {2}?",tmnum,machinename))

          @item=pbGet(99)
          @mat1=RECIPES[@item][2]? RECIPES[@item][2][0] : -1 # the amount for first item
          @mat2=RECIPES[@item][3]? RECIPES[@item][3][0] : -1 # the amount for first item
          @cost1=RECIPES[@item][2]? RECIPES[@item][2][1] : 0 # the amount for first item
          @cost2=RECIPES[@item][3]? RECIPES[@item][3][1] : 0 # the amount for first item
          @amount=RECIPES[@item][1] # the amount for the first item made

          if $PokemonBag.pbQuantity(@mat1)<@cost1 || (@mat2!=-1 && $PokemonBag.pbQuantity(@mat2) <@cost2)
              Kernel.pbMessage(_INTL("Unable to craft item, you do not meet the required materials"))
            else
              $PokemonBag.pbStoreItem(RECIPES[@item][0],@amount)
              $PokemonBag.pbDeleteItem(@mat1,@cost1)
              if @mat2!=-1
                $PokemonBag.pbDeleteItem(@mat2,@cost2)
              end
              Kernel.pbMessage(_INTL("{1} {2}'s were crafted", @amount, PBItems.getName(getID(PBItems,RECIPES[@item][0]))))
         end
       end
   else
       pbMessage(_INTL("Please enter a valid TM number. (Between 1 and 99)"))
   end
end
