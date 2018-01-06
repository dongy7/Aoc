lines = File.readlines 'input.txt'
rows = lines.map { |line| line.split(/\t/).map { |s| s.to_i } }

checksum = rows.sum { |row| -row.minmax.reduce(:-) }
puts "Part 1: " + checksum.to_s

checksum2 = rows.sum { |row| row.permutation(2).find { |x,y| x % y == 0 }.reduce(:/) }
puts "Part 2: " + checksum2.to_s