#
# Vote Districts
#  -> Lower Austria
#

["Amstetten", "Baden", "Bruck", "Gaenserndorf", "Gmuend", "Hollabrunn", "Horn", "Korneuburg", "Krems", "Lilienfeld", "Melk", "Mistelbach", "Moedling", "Neunkirchen", "St. Poelten", "Scheibbs", "Tulln", "Waidhofen an der Thaya", "Wien-Umgebung", "Wiener Neustadt", "Zwettl"].each do |vd|
  Votedistrict.find_or_create_by_name(vd)
end

###

# District: 1
["Amstetten", "Waidhofen an der Ybbs"].each do |d|
  Votedistrict.find(1).districts.create(name: d) 
end

# District: 2
["Baden"].each do |d|
  Votedistrict.find(2).districts.create(name: d) 
end

# District: 3
["Bruck"].each do |d|
  Votedistrict.find(3).districts.create(name: d) 
end

# District: 4
["Gaenserndorf"].each do |d|
  Votedistrict.find(4).districts.create(name: d) 
end

# District: 5
["Gmuend"].each do |d|
  Votedistrict.find(5).districts.create(name: d) 
end

# District: 6
["Hollabrunn"].each do |d|
  Votedistrict.find(6).districts.create(name: d) 
end

# District: 7
["Horn"].each do |d|
  Votedistrict.find(7).districts.create(name: d) 
end

# District: 8
["Korneuburg"].each do |d|
  Votedistrict.find(8).districts.create(name: d) 
end

# District: 9
["Krems", "Krems Land"].each do |d|
  Votedistrict.find(9).districts.create(name: d) 
end

# District: 10
["Lilienfeld"].each do |d|
  Votedistrict.find(10).districts.create(name: d) 
end

# District: 11
["Melk"].each do |d|
  Votedistrict.find(11).districts.create(name: d) 
end

# District: 12
["Mistelbach"].each do |d|
  Votedistrict.find(12).districts.create(name: d) 
end

# District: 13
["Moedling"].each do |d|
  Votedistrict.find(13).districts.create(name: d) 
end

# District: 14
["Neunkirchen"].each do |d|
  Votedistrict.find(14).districts.create(name: d) 
end

# District: 15
["St. Poelten", "St. Poelten Land"].each do |d|
  Votedistrict.find(15).districts.create(name: d) 
end

# District: 16
["Scheibbs"].each do |d|
  Votedistrict.find(16).districts.create(name: d) 
end

# District: 17
["Tulln"].each do |d|
  Votedistrict.find(17).districts.create(name: d) 
end

# District: 18
["Waidhofen an der Thaya"].each do |d|
  Votedistrict.find(18).districts.create(name: d) 
end

# District: 19
["Wien-Umgebung"].each do |d|
  Votedistrict.find(19).districts.create(name: d) 
end

# District: 20
["Wiener Neustadt", "Wiener Neustadt Land"].each do |d|
  Votedistrict.find(20).districts.create(name: d) 
end

# District: 21
["Zwettl"].each do |d|
  Votedistrict.find(21).districts.create(name: d) 
end
