stock = [17,3,6,9,15,8,6,1,10]

def stock_picker (stock_list)
    out = {
        "index_buy"=> 0,
        "index_sell" => 0,
        "profit" => 0,
    }
    stock_list = stock_list[0] 
    
    for i in (0..stock_list.length-2) do
        p "iteration #{i}"
        buy = stock_list[i]
        for j in (i+1..stock_list.length-1) do
            sell = stock_list[j]
            profit = sell - buy
            if profit > out['profit']
                out['profit'] = profit
                out["index_buy"] = i
                out["index_sell"] = j
            end
        end
    end

    out
end

p stock_picker([stock])