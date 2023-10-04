# --- Get number of stages ---
def get_number_of_stages
  puts "Salut BG ! :}"
  puts "Bienvenue dans ma super pyramide ! Combien d'étages veux-tu afficher ?!"

  print "> "
  number_of_stages = gets.chomp.to_i
  return number_of_stages
end

# --- Half pyramid ---

def half_pyramid(number_of_stages)
  spaces = " "
  tags = "#"
  
  spaces_count = number_of_stages
  tags_count = 1
  
  number_of_stages.times do |index|
    puts spaces * spaces_count + tags * tags_count
    spaces_count -= 1
    tags_count += 1
  end
end

# --- Full pyramid ---

def full_pyramid(number_of_stages)
  spaces = " "
  tags = "#"
  
  spaces_count = number_of_stages
  tags_count = 1
  
  number_of_stages.times do |index|
    puts spaces * spaces_count + tags * tags_count
    spaces_count -= 1
    tags_count += 2
  end
end

# --- WTF pyramid ---

def wtf_pyramid(number_of_stages)
  spaces = " "
  tags = "#"
  
  spaces_count = number_of_stages
  tags_count = 1
  
  number_of_stages.times do |index|
    puts spaces * spaces_count + tags * tags_count
    spaces_count -= 1
    tags_count += 2
  end
  
  spaces_count += 1
  tags_count -= 2
  
  number_of_stages.times do |index|
    puts spaces * spaces_count + tags * tags_count
    spaces_count += 1
    tags_count -= 2
  end
end

# -------- Perform --------


def perform
  number_of_stages = get_number_of_stages
  puts "\nVoici ta moitié de pyramide, mon brave:\n\n"
  half_pyramid(number_of_stages)
  puts "\nVoici ta pyramide complète, mon brave:\n\n"
  full_pyramid(number_of_stages)
  puts "\nVoici ta pyramide inversée, mon brave:\n\n"
  wtf_pyramid(number_of_stages)
  puts "\n"
end

perform
