hh_basket = {}
num = 1
summ = 0
loop do
  print 'Введите товар:'
  good = gets.chomp
  break if good == 'стоп'
  print 'Введите цену:'
  price = gets.chomp.to_f
  print 'Введите количество:'
  weight = gets.chomp.to_f
  hh_price_weihgt = {price:0,weight:0}
  hh_price_weihgt [:price]=price
  hh_price_weihgt [:weight]=weight
  hh_basket[good] = hh_price_weihgt
  puts hh_basket
end
hh_basket.each do |good, qualities|
  print "#{num} #{good}\t\t\кол-во:#{qualities[:weight]}\t\tцена:#{qualities[:price]}\t\t"
  puts "сумма:#{qualities[:price] * qualities[:weight]}"
  #встроенного сумматора в классе hash я не обнаружил
  num += 1
  summ += qualities[:price] * qualities[:weight]
end
puts "ИТОГО: #{summ}"
#(
# #Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу
# # и кол-во купленного товара (может быть нецелым числом). Пользователь
# # может ввести произвольное кол-во товаров до тех пор, пока не введет
# # "стоп" в качестве названия товара. На основе введенных данных требуетеся:
#                                                                                                                                                                                                                                                                                     Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
# #Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".)