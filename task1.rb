# Task #1
# Створити програму, яка буде отримувати від користувача назву тварини.
# В залежності від введеної тварини, виводити в консоль звук, який ця тварина видає.
# Вивід має бути у такому форматі - "Назва_тварини говорить - звук_тварини". Назва тварини має починатись з великої літери.
# Якщо була введена назва тварини, яка не покривається програмою (або щось ліве), то вивести в консоль відповідне повідомлення.
# Програма має покривати 4-5 назв тварин, в незалежності від регістру введених назв.
#
# Приклад взаємодії користувача з цією програмою:    |   Приклад взаємодії користувача з цією програмою:
# Введіть назву тварини:                             |   Введіть назву тварини:
# супер_вЕдміДь                                      |   сУпер_веДмідь
# Супер_ведмідь говорить - ведмежачий звук           |   Супер_ведмідь говорить - ведмежачий звук

hash_animal_name = {
  'bear' => 'Hrrrr',
  'cow' => 'Moooooo',
  'cat' => 'Meow, meow',
  'dog' => 'Gaf, gaf',
  'gorilla' => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaa',
  'wolf' => 'AAAAAAAAAAUUUUUUUUUUU',
  'dinosaur' => 'Run stupid Forest, Run'
}

puts('Please enter animal name from the list(bear, cow, cat, dog, gorilla, wolf, dinosaur)')
animal_name = gets.chomp.strip.downcase


if hash_animal_name.has_key?animal_name
  puts(hash_animal_name[animal_name])
else
  puts("Your animal is not on the list")
end
# hash_animal_name.each {|key, val| puts val if key.to_s == animal_name}
