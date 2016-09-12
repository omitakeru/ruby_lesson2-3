line = gets
ary = line.split(" ")
m = ary[0].to_i
n = ary[1].to_i

sosu = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]

i = 0
while m>=sosu[i] and i<sosu.length do
    i += 1
end
puts i

count = 0
p1 = 2**i-1
while p1 >= 0 do
        k = p1
        p2 = 2**i-1
        while p2 >=0 do
                l = p2
                sum = n
                (0...i).each do |r|
                      kk = k%2
                      k = k/2
                      ll = (l%2) * 2 - 1
                      l = l/2
                      sum += sosu[r] * kk * ll
                end
                if sum == 0 then 
                     count += 1 
                end
		p2 -= 1
        end
        p1 -= 1
end
puts count
