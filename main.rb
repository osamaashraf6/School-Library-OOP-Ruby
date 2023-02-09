require_relative 'app'

def main
  system('cls')
  system('clear')
  puts "Welcome to School Library App!\n "
  app = App.new
  app.run
end

main
