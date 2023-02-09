module ListAllPeople
  # 2
  def list_all_people
    puts "List all of the people\n "
    puts "These are all saved people:\ncount(#{@people.count})\n "
    if @people.empty?
      puts "No people in the database\n "
    else
      @people.each_with_index do |p, i|
        puts "
          #{i + 1})\s[#{p['class'] == 'method' ? 'Teacher' : 'Student'}] Id: #{p['id']},\s
          Name: #{p['name']}, Age: #{p['age']}\s
        "
      end
      puts "\nEnd of the people's list\n "
    end
    @people.count
  end
end
