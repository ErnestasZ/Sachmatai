lines = File.open('duom.txt', 'r').read.split("\n").drop(1)

bords = []

lines.each {|line| bords << line.split.map(&:to_i)}
# sum_bords = bords.transpose.map {|piece| piece.inject(:+) }

result = Array.new(6, 0)
bords.each do |bord|
  bord.size.times do |index|
    result[index] += bord[index]
  end
end

chess = [8, 2, 2, 2, 1, 1]

result.each_with_index do |res, index|
    result[index] = res / chess[index]
  
end

puts result.min
