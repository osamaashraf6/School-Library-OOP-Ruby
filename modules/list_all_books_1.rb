module ListAllBooks
  def list_all_books
    puts "List all of the books\n "
    puts "These are all saved books:\ncount(#{@books.count})\n "
    if @books.empty?
      puts "No books in the database\n "
    else
      @books.each_with_index do |b, i|
        puts "#{i + 1}) #{b['title']} by #{b['author']}"
      end
      puts "\nEnd of the books' list\n "
    end
    @books.count
  end
end
