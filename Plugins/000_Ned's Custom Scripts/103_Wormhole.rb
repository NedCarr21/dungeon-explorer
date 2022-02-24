def randomwormhole
  $game_switches[97] = true

  $game_variables[97] = rand(12) + 1
  if $game_variables[97] == 1
    $game_switches[31] = true
  else
    $game_switches[31] = false
  end

  case rand(32)
    when 0; pbWildBattle(:DITTO,5)
    when 1; pbWildBattle(:HONEDGE,5)
    when 2; pbWildBattle(:KABUTO,5)
    when 3; pbWildBattle(:OMANYTE,5)
    when 4; pbWildBattle(:AERODACTYL,5)
    when 5; pbWildBattle(:ANORITH,5)
    when 6; pbWildBattle(:LILEEP,5)
    when 7; pbWildBattle(:RELICANTH,5)
    when 8; pbWildBattle(:CRANIDOS,5)
    when 9; pbWildBattle(:SHIELDON,5)
    when 10; pbWildBattle(:TIRTOUGA,5)
    when 11; pbWildBattle(:ARCHEN,5)
    when 12; pbWildBattle(:TYRUNT,5)
    when 13; pbWildBattle(:AMAURA,5)
    when 14; pbWildBattle(:DRACOZOLT,5)
    when 15; pbWildBattle(:ARCTOZOLT,5)
    when 16; pbWildBattle(:DRACOVISH,5)
    when 17; pbWildBattle(:ARCTOVISH,5)
    when 18; pbWildBattle(:YANMA,5)
    when 19; pbWildBattle(:DURANT,5)
    when 20; pbWildBattle(:LARVESTA,5)
    when 21; pbWildBattle(:SIZZLIPEDE,5)
    when 22; pbWildBattle(:CHIKORITA,5)
    when 23; pbWildBattle(:CYNDAQUIL,5)
    when 24; pbWildBattle(:TOTODILE,5)
    when 25; pbWildBattle(:PIDGEY,5)
    when 26; pbWildBattle(:LARVITAR,5)
    when 27; pbWildBattle(:UNOWN,5)
    when 28; pbWildBattle(:SPIRITOMB,5)
    when 29; pbWildBattle(:GOOMY,5)
    when 30; pbWildBattle(:DREEPY,5)
    when 31; Kernel.pbMessage(_INTL("There is no prescence eminating from the wormhole."))
    end
  pbWait(5)
  $game_variables[97] = 0
  $game_switches[97] = false
  $game_switches[31] = false
  $game_switches[31] = false
end

def wormholeEncounter
  case rand(39) #90 each is 1/90 (1.111%) random is 4/90 (4.444%)
  when 0;
    if ($Trainer.hasOwned?(:ARTICUNO))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("An icy bird emerged."))
      pbWait(5)
      pbWildBattle(:ARTICUNO,70)
    end

  when 1;
    if ($Trainer.hasOwned?(:ZAPDOS))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("An electrical bird emerged."))
      pbWait(5)
      pbWildBattle(:ZAPDOS,70)
    end

  when 2;
    if ($Trainer.hasOwned?(:MOLTRES))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A fiery bird emerged."))
      pbWait(5)
      pbWildBattle(:MOLTRES,70)
    end

  when 3;
    if ($Trainer.hasOwned?(:MEWTWO))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A mew? emerged."))
      pbWait(5)
      pbWildBattle(:MEWTWO,70)
    end

  when 4;
    if ($Trainer.hasOwned?(:MEW))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A mythical psychic emerged."))
      pbWait(5)
      pbWildBattle(:MEW,70)
    end

  when 5;
    if ($Trainer.hasOwned?(:RAIKOU))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("An electrical dog emerged."))
      pbWait(5)
      pbWildBattle(:RAIKOU,70)
    end

  when 6;
    if ($Trainer.hasOwned?(:ENTEI))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A fiery dog emerged."))
      pbWait(5)
      pbWildBattle(:ENTEI,70)
    end

  when 7;
    if ($Trainer.hasOwned?(:SUICUNE))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A watery dog emerged."))
      pbWait(5)
      pbWildBattle(:SUICUNE,70)
    end

  when 8;
    if ($Trainer.hasOwned?(:HOOH))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A rainbow legendary emerged."))
      pbWait(5)
      pbWildBattle(:HOOH,70)
    end

  when 9;
    if ($Trainer.hasOwned?(:LUGIA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A tidal legendary emerged."))
      pbWait(5)
      pbWildBattle(:LUGIA,70)
    end

  when 10;
    if ($Trainer.hasOwned?(:CELEBI))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A time traveler emerged."))
      pbWait(5)
      pbWildBattle(:CELEBI,70)
    end

  when 11;
    if ($Trainer.hasOwned?(:REGIROCK))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A rocky titan emerged."))
      pbWait(5)
      pbWildBattle(:REGIROCK,70)
    end

  when 12;
    if ($Trainer.hasOwned?(:REGICE))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("An icy titan emerged."))
      pbWait(5)
      pbWildBattle(:REGICE,70)
    end

  when 13;
    if ($Trainer.hasOwned?(:REGISTEEL))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A metallic titan emerged."))
      pbWait(5)
      pbWildBattle(:REGISTEEL,70)
    end

  when 14;
    if ($Trainer.hasOwned?(:LATIOS))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A blue eonic jet emerged."))
      pbWait(5)
      pbWildBattle(:LATIOS,70)
    end

  when 15;
    if ($Trainer.hasOwned?(:LATIAS))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A red eonic jet emerged."))
      pbWait(5)
      pbWildBattle(:LATIAS,70)
    end

  when 16;
    if ($Trainer.hasOwned?(:KYOGRE))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("An oceanic legendary emerged."))
      pbWait(5)
      pbWildBattle(:KYOGRE,70)
    end

  when 17;
    if ($Trainer.hasOwned?(:GROUDON))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A volcanic legendary emerged."))
      pbWait(5)
      pbWildBattle(:GROUDON,70)
    end

  when 18;
    if ($Trainer.hasOwned?(:RAYQUAZA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A sky dragon emerged."))
      pbWait(5)
      pbWildBattle(:RAYQUAZA,70)
    end

  when 19;
    if ($Trainer.hasOwned?(:JIRACHI))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A starry wish emerged."))
      pbWait(5)
      pbWildBattle(:JIRACHI,70)
    end

  when 20;
    if ($Trainer.hasOwned?(:UXIE))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A lake legendary emerged."))
      pbWait(5)
      pbWildBattle(:UXIE,70)
    end

  when 21;
    if ($Trainer.hasOwned?(:MESPRIT))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A lake legendary emerged."))
      pbWait(5)
      pbWildBattle(:MESPRIT,70)
    end

  when 22;
    if ($Trainer.hasOwned?(:AZELF))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A lake legendary emerged."))
      pbWait(5)
      pbWildBattle(:AZELF,70)
    end

  when 23;
    if ($Trainer.hasOwned?(:DIALGA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A time legendary emerged."))
      pbWait(5)
      pbWildBattle(:DIALGA,70)
    end

  when 24;
    if ($Trainer.hasOwned?(:PALKIA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A space legendary emerged."))
      pbWait(5)
      pbWildBattle(:PALKIA,70)
    end

  when 25;
    if ($Trainer.hasOwned?(:GIRATINA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A distortion emerged."))
      pbWait(5)
      pbWildBattle(:GIRATINA,70)
    end

  when 26;
    if ($Trainer.hasOwned?(:CRESSELIA))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A dream emerged."))
      pbWait(5)
      pbWildBattle(:CRESSEILA,70)
    end

  when 27;
    if ($Trainer.hasOwned?(:DARKRAI))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A nightmare emerged."))
      pbWait(5)
      pbWildBattle(:DARKRAI,70)
    end

  when 28;
    if ($Trainer.hasOwned?(:HEATRAN))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A metallic volcano emerged."))
      pbWait(5)
      pbWildBattle(:HEATRAN,70)
    end

  when 29;
    if ($Trainer.hasOwned?(:SHAYMIN))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A flower emerged."))
      pbWait(5)
      pbWildBattle(:SHAYMIN,70)
    end

  when 30;
    if ($Trainer.hasOwned?(:REGIGIGAS))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A titan emerged."))
      pbWait(5)
      pbWildBattle(:REGIGIGAS,70)
    end

  when 31;
    if ($Trainer.hasOwned?(:MANAPHY))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A starry wish emerged."))
      pbWait(5)
      pbWildBattle(:MANAPHY,70)
    end

  when 32;
    if ($Trainer.hasOwned?(:PHIONE))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A starry wish emerged."))
      pbWait(5)
      pbWildBattle(:PHIONE,70)
    end

  when 33;
    if ($Trainer.hasOwned?(:ARCEUS))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A god emerged."))
      pbWait(5)
      pbWildBattle(:ARCEUS,70)
    end

  when 34;
    if ($Trainer.hasOwned?(:VICTINI))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A victory wish emerged."))
      pbWait(5)
      pbWildBattle(:VICTINI,70)
    end

  when 35;
    if ($Trainer.hasOwned?(:COBALION))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A justice sword emerged."))
      pbWait(5)
      pbWildBattle(:COBALION,70)
    end

  when 36;
    if ($Trainer.hasOwned?(:TERAKION))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A justice sword emerged."))
      pbWait(5)
      pbWildBattle(:TERAKION,70)
    end

  when 37;
    if ($Trainer.hasOwned?(:VIRIZION))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A justice sword emerged."))
      pbWait(5)
      pbWildBattle(:VIRIZION,70)
    end

  when 38; randomwormhole
  when 39; randomwormhole
  when 40; randomwormhole
  when 41; randomwormhole

  end
end



=begin
  when #;
    if ($Trainer.hasOwned?(:NAME))
      wormholeEncounter
    else
      Kernel.pbMessage(_INTL("A xxx emerged."))
      pbWait(5)
      pbWildBattle(:NAME,70)
    end

  when #; pbWait(5)
    randomwormhole

=end
