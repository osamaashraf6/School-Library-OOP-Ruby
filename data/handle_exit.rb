require 'json'
require_relative 'handle_rentals'
require_relative 'handle_books'
require_relative 'handle_people'

module HandleExit
  include HandleRentals
  include HandleBooks
  include HandlePeople

  def handle_exit
    handle_books
    handle_people
    handle_rentals
  end
end
