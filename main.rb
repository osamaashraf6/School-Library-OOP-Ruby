require_relative 'app'

def print_question
  puts "Please choose an option by enterin a number:
    1- List all books.
    2- List all people.
    3- Create a person.
    4- Create a book.
    5- Create a rental.
    6- List all rentals for a given person id.
    7- Exit."
end

class Main
  app = App.new
  puts 'Welcome to library Application!'
  loop do
    print_question
    selected = app.select_opt
    break if selected == 7
  end
  puts 'Thanks for using this App!!'
end

Main
