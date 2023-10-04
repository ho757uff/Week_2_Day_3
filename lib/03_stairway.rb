def roll_dice
    return rand(1..6)
  end
  
  def move(player_position, dice_roll)
    case dice_roll
    when 5, 6
      player_position += 1
    when 1
      player_position -= 1 if player_position > 0
    end
    return player_position
  end
  
  def display_game_state(player_position)
    puts "Tu es maintenant sur la marche n°#{player_position}"
  end
  
  def play_game
    player_position = 0
  
    puts "Bienvenue dans le jeu de l'escalier !"
  
    until player_position == 10
      puts "Appuie sur Entrée pour lancer le dé..."
      gets.chomp
  
      dice_roll = roll_dice
      puts "Tu as lancé le dé et obtenu un #{dice_roll}"
  
      player_position = move(player_position, dice_roll)
      display_game_state(player_position)
    end
  
    puts "Bravo, tu as atteint la 10ème marche !"
  end
  
  play_game
  