def generate_password(length, use_numbers=false, use_symbols=false)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a
  characters += ('0'..'9').to_a if use_numbers
  characters += ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')'] if use_symbols
  password = ''
  length.times { password << characters[rand(characters.length)] }
  password
end

puts "Vuoi includere numeri nella password? (S/N)"
use_numbers = gets.chomp.downcase == 's'

puts "Vuoi includere caratteri speciali nella password? (S/N)"
use_symbols = gets.chomp.downcase == 's'

puts "La tua nuova password è: #{generate_password(12, use_numbers, use_symbols)}"
