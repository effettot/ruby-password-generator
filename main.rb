def generate_password(length)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')']
  password = ''
  length.times { password << characters[rand(characters.length)] }
  password
end

puts "La tua nuova password è: #{generate_password(12)}"
