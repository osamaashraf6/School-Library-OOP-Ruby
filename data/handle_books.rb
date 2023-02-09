module HandleBooks
  def handle_books
    return if @books.empty?

    data = JSON.pretty_generate(@books.map do |e|
                                  {
                                    title: e['title'],
                                    author: e['author']
                                  }
                                end)
    File.write('./data/books.json', data)
    puts 'books saved successfully'
  end
end
