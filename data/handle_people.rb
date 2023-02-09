module HandlePeople
  def handle_people
    return if @people.empty?

    data = JSON.pretty_generate(@people.map do |e|
                                  {
                                    id: e['id'],
                                    age: e['age'],
                                    name: e['name'],
                                    parent_permission: e['parent_permission'],
                                    class: e['class']
                                  }
                                end)
    File.write('./data/people.json', data)
    puts 'people saved successfully'
  end
end
