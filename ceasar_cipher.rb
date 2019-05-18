def ceasar_cipher( str, offset )
    alpha = ('a'..'z').to_a
    str.chars.each.with_index do |x, y|
        if alpha.include?( x )
            index = alpha.index(x) + offset
            str[y] = alpha[index % alpha.length]
        end
    end
    puts str
end

ceasar_cipher( 'greg is a super cool stinky engine', 5 );
