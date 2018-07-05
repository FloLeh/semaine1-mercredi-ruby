def define_password
    puts "Créez votre mot de passe : "
    print "> "
    @pass = gets.chomp
end

def password_verification(password)
  return password == @pass
end

def connect(password)
  while password_verification(password) == false
    puts "Erreur de mot de passe \n Veuillez réessayer : "
    print "> "
    password = gets.chomp
  end
  puts "Vous êtes connecté !"
end

def connect_toi
  define_password
  puts "Quel est votre mot de passe ?"
  print "> "
  password = gets.chomp
  connect(password)
end

connect_toi()
