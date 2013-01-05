#
# Vote Districts
#  -> Lower Austria
#
["Klagenfurt", "Kaernten Ost", "Villach", "Kaernten West"].each do |vd|
  Votedistrict.find_or_create_by_name(vd)
end

###

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
