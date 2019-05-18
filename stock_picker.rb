def stock_picker( stocks )
    best = {
        buy: 0,
        buy_at: 0,
        sell_at: 0
    }

    stocks.each.with_index do |buy, buy_at|
        stocks.each.with_index do |sell, sell_at|
            if( sell - buy > best[:buy] && buy_at < sell_at )
                best = {
                    buy: sell - buy,
                    buy_at: buy_at,
                    sell_at: sell_at
                }
            end
        end
    end
    

    puts best
end

stock_picker([17,3,6,9,15,8,6,1,10])