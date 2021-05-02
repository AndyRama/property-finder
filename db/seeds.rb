puts "Seeding DB:"
print "\n Création reussie: '.'"
print " - "
print " Déjà existant: '-'"
print " - "
print " Création echouée: 'X'"

puts "\n\n Création de 1 Utilisateurs"

user2 = User.new(first_name:"andy",last_name:"alain",email:"andy@gmail.com",password: "Pbxk1984",url: nil, admin: true, image: "https://res.cloudinary.com/dbtnehfrf/image/upload/v1619189911/vkf87wxq2a9imtiaixy7jkkf3kpw.png", company:"A2RSII",number:"0679554022" ,details: "",cover_image: nil)

puts "\n\n Création d'une image pour profil Utilisateurs"

if user2.save!
  user2.image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619189911/vkf87wxq2a9imtiaixy7jkkf3kpw.png"), filename:'user2')
  print('.')
else
  user2 = User.where(email: "andy@gmail.com").first
  if user2
    print('-')
  else
    print('X')
  end
end

puts "\n\n Création d'une image cover pour profil Utilisateurs"

if user1.save!
  user1.cover_image.attach(io: open("https://res.cloudinary.com/dbtnehfrf/image/upload/v1619106936/og1hrs3zmzr65qre38sjnu205p8n.jpg"), filename:'user1')
  print('.')
else
  user1 = User.where(email: "andy@gmail.com").first
  if user1
    print('-')
  else
    print('X')
  end
end

