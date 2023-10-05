# def wanna_play
  #   puts "Are you ready to dumble ?! :D"
  #   puts "Press y for 'yes' or n for 'no'\n"
  #   print "> "
  #   start_cond = gets.chomp

  # while start_cond != "y" && start_cond != "n"
  #   puts "I didn't understand, please press y for 'yes' or n for 'no'\n"
  #   print "> "
  #   start_cond = gets.chomp
  # end

  # play_on = false

  # if start_cond == "y"
  #   puts "Now that's what I'm talking about !\nLet's go then !\n"
  #   play_on == true
  #   return play_on
  # elsif start_cond == "n"
  #   puts "Too bad ! Another time perhaps !\n"
  # end
# end

# ---

def game_flow#(play_on)

  stair_step = 0
  dice_turn_roll = 0
  turn_number = 0

  while stair_step != 10
    turn_number += 1
    dice_turn_roll = rand(6)
    puts "You rolled #{dice_turn_roll} this turn !"

    if dice_turn_roll == 5 or dice_turn_roll == 6
      puts "Moving forward ! You're now on step n°#{stair_step}"
      stair_step += 1
    elsif dice_turn_roll == 1
      puts "Moving downward ! You're now on step n°#{stair_step}"
      stair_step -= 1
    else
      puts "Can't move ! You're still on step n°#{stair_step}"
    end
  end
  puts "You rolled #{dice_turn_roll} this turn !"
  puts "Moving forward ! You're now on step n°#{stair_step}"
  puts "You've won the game in #{turn_number} turns ! Congratz !"
  return turn_number
end

---

def game_simulator(turn_number)


end
return

# ---

def perform
# wanna_play
game_flow#(play_on)
game_simulator(turn_number)
end
# ---


perform