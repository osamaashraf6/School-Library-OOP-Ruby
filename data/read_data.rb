require 'json'

module ReadData
  def read_people
    return [] unless File.exist?('./data/people.json') && !File.zero?('./data/people.json')

    json_from_file = File.read('./data/people.json')
    JSON.parse(json_from_file)
  end

  def read_books
    return [] unless File.exist?('./data/books.json') && !File.zero?('./data/books.json')

    json_from_file = File.read('./data/books.json')
    JSON.parse(json_from_file)
  end

  def read_rentals
    return [] unless File.exist?('./data/rentals.json') && !File.zero?('./data/rentals.json')

    json_from_file = File.read('./data/rentals.json')
    JSON.parse(json_from_file)
  end
end
