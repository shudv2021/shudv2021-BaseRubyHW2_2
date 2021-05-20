arr_year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
today = 0
print 'Введите год:'
year = gets.chomp.to_i
print 'Введите месяц:'
month = gets.chomp.to_i
print 'Введите день:'
days = gets.chomp.to_i
if year % 4 == 0 && year % 100 != 0 || year == 2000
  arr_year[1] = 29
end
today = arr_year.take(month - 1).sum + days
puts "Сегодня #{today} день #{year} года"