puts "Seeding DB:"
print "\n Création reussie: '.'"
print " - "
print " Déjà existant: '-'"
print " - "
print " Création echouée: 'X'"

puts "\n\n Création de 1 Utilisateurs"

andy = User.create(first_name:"anda",last_name:"alain",email:"anda@gmail.com",password: "Pbxk1984")
if andy.save
  print('.')
else
  andy = User.where(email: "anda@gmail.com").first
  print('-')
end



