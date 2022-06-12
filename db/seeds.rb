# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

slytherin_group = Group.create({ name: 'Slytherin House' })
ravenclaw_group = Group.create({ name: 'Ravenclaw House' })
hufflepuff_group = Group.create({ name: 'Hufflepuff House' })
gryffindor_group = Group.create({ name: 'Gryffindor House' })

slytherin_characters = ['Nathaniel Quintas']
ravenclaw_characters = ['Eleanora Mistral']
hufflepuff_characters = ['Cassandra Caldrune']
gryffindor_characters = ['Patricia Medows', 'Albus Dumbledore']

slytherin_characters.each do |name|
  Character.create({ name: name, groups: [slytherin_group]})
end

ravenclaw_characters.each do |name|
  Character.create({ name: name, groups: [ravenclaw_group]})
end

hufflepuff_characters.each do |name|
  Character.create({ name: name, groups: [hufflepuff_group]})
end

gryffindor_characters.each do |name|
  Character.create({ name: name, groups: [gryffindor_group]})
end
