def signup_method
  puts "Bienvenue, User !"
  puts "Indique donc ton password !"
  print "> "
  password = gets.chomp
  return password
end


def login_method(password)
  puts "Indique ton password pour te login et accéder au... jardin secret!"
  print "> "
  temp_password = gets.chomp
    while temp_password != password
      puts "Mot de passe incorrect. Réessaye pour accéder au... jardin secret !"
      print "> "
      temp_password = gets.chomp
    end
  access_granted = true
  return access_granted
end


def check_in(access_granted)
  if access_granted == true
    puts "\n\nBienvenue dans la zone secrète !"
    puts "Ici, tu as accès à des informations hyper confidentielles !"
    puts "La Terre est plate !"
    puts "Du moins c'est ce que dit la NASA !"
    puts "Mais chut !!! N'en dis rien, c'est top secret ! :D\n\n"
  end
end  


def perform
  password = signup_method
  access_granted = login_method(password)
  check_in(access_granted)
end

perform