def triangle(num)
    return num * (num + 1)/2
end

def pentagonal(num)
    return num*(3*num - 1)/2
end

def hexagonal(num)
    return num*(2*num - 1)
end

tri_idx = 286
pent_idx = 1
pent = pentagonal(pent_idx)

hex_idx = 1
hexa = hexagonal(hex_idx)

while 1 do
    puts "Triangle index: #{tri_idx}"
    tri = triangle(tri_idx)
    puts "Triangle number: #{tri}"
    while pent < tri do
        pent_idx += 1
        pent = pentagonal(pent_idx)
        puts "Pentagonal number: #{pent}"
    end

    if pent == tri then
        while hexa < tri do
            hex_idx += 1
            hexa = hexagonal(hex_idx)
            puts "Hexagonal number: #{hexa}"
        end
    end
    
    if tri == pent and tri == hexa then
        puts "T#{tri_idx} == P#{pent_idx} == H#{hex_idx}"
        puts "T#{tri_idx} = #{tri}"
        break
    end
    tri_idx += 1
end


