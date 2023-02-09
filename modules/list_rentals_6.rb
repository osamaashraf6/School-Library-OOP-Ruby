module ListRentals
  # 6
  def list_rentals_for_id
    puts "List all of the rentals\n "
    list_all_people
    print 'Type a valid id number: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals.each do |object|
      puts "Date: #{object['date']}, Book '#{object['book']}' by #{object['person']}" if object['id'] == id
    end
    run
  end
end
