def stock_picker(array_of_days)
# Inizializzazione delle tre variabili che ritorneranno i valori finali.
  best_day_to_buy = nil
  best_day_to_sell = nil
  max_profit = 0
# Prima iterazione sulla lista: assegno il price al day_to_buy e tengo traccia del suo index
  array_of_days.each_with_index do |buying_price, buying_day|
# Seconda iterazione annidata: assegno il price day_to_sell (partendo dall'index di day_to_buy + 1 fino alla length della lista-1).
    (buying_day + 1...array_of_days.size).each do |selling_day|
      selling_price = array_of_days[selling_day]
# Se profit e' superiore a max_profit aggiorno max_profit e i rispettivi index della lista per sapere i giorni
      if (selling_price - buying_price) > max_profit
        max_profit = selling_price-buying_price
        best_day_to_buy = buying_day
        best_day_to_sell = selling_day
      end
    end
  end
  puts "The best day to buy is day #{best_day_to_buy + 1}. The best day to sell will be day #{best_day_to_sell + 1}. You will make a profit of #{max_profit}"
  [best_day_to_buy, best_day_to_sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])