# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Vote Districts
#  -> Carinthia
["Klagenfurt", "Kaernten Ost", "Villach", "Kaernten West"].each do |vd|
  Votedistrict.find_or_create_by_name(vd)
end

# District: 1
["Klagenfurt am Woerthersee", "Klagenfurt Land"].each do |d|
  Votedistrict.find(1).districts.create(name: d) 
end

# District: 2
["Sankt Veit an der Glan", "Voelkermark", "Wolfsberg"].each do |d|
  Votedistrict.find(2).districts.create(name: d) 
end

# District: 3
["Villach", "Villach Land"].each do |d|
  Votedistrict.find(3).districts.create(name: d) 
end

# District: 4
["Feldkirchen", "Hermagor", "Spital an der Drau"].each do |d|
  Votedistrict.find(4).districts.create(name: d) 
end
