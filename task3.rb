# Task #3*
# Реалізувати програму, яка надасть юзеру можливість ввести перелік своїх улюблених та найненавистніших міст (міста - англійською мовою).
# Ввід улюблених та найненавистніших міст має бути реалізований через два різні вводи.
# Міста вводяться через кому, потрібно обробляти випадки, коли між комами та самими назвами міст наявна певна кількість пробілів.
# На виході програма має повертати відсортований за назвою (алфавітом) перелік цих міст, також записаний через кому.
# Спочатку іде відсортований список улюблених міст, а потім через кому цей список має продовжуватись відсортованим списком найненавистніших міст.
#
# Приклад взаємодії користувача з цією програмою:
# Введіть улюблені міста:
# Cherkassy,  Toronto,    Tokyo, Lviv  , Paris
# Введіть найненавистніші Вами міста:
# Texas, New York,Indiana
# Результат виконання:
# Cherkassy, Lviv, Paris, Tokyo, Toronto, New York, Texas, Indiana

puts 'Please, enter your favority cities'
like_citys = gets.chomp
arr_like_citys = like_citys.split(',')
.sort_by{|i| i.scan(/\w+/).first}
result_like_citys =  arr_like_citys.map {|i| i.strip.squeeze(" ")}

puts 'Please, enter your most hated cities'
hated_cities = gets.chomp
arr_hated_cities = hated_cities.split(',')
.sort_by{|i| i.scan(/\w+/).first}
result_hated_cities =  arr_hated_cities.map {|i| i.strip.squeeze(" ")}

result = result_like_citys + result_hated_cities
puts result.join(', ')
