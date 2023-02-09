module HandleRentals
  def handle_rentals
    return if @rentals.empty?

    data = JSON.pretty_generate(@rentals.map do |e|
                                  {
                                    date: e['date'],
                                    person: e['person'],
                                    book: e['book'],
                                    id: e['id']
                                  }
                                end)
    File.write('./data/rentals.json', data)
    puts 'rentals saved successfully'
  end
end
