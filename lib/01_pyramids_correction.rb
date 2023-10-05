def ask_floor
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  return gets.chomp.to_i
end

def build_floor(total_floor, current_floor)
  print " " * (total_floor - current_floor)
  print "#" * (2 * current_floor - 1)
  puts
end

def build_pyramid(total_floor)
  puts "Voici la pyramide :"

  total_floor.times do |current_floor|
    build_floor(total_floor, current_floor + 1)
  end
end

def perform
  total_floor = ask_floor
  build_pyramid(total_floor)
end

perform
