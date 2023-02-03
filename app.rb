require './student'
require './teacher'
require './book'
require './rental'

class App
  def initialize
    @books = []
    @person = []
    @rentals = []
  end

  # rubocop:disable Style/CyclomaticComplexity
  def select_opt
    option = gets.chomp.to_i
    case option
    when 1 then list_books
    when 2 then list_people
    when 3 then create_person
    when 4 then create_book
    when 5 then create_rental
    when 6 then list_rentals
    when 7 then exit(true)
    else
      puts 'PLEASE ENTER A NUMBER (1..7)'
    end
  end
  # rubocop:enable Style/CyclomaticComplexity

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_people
    @person.each do |p|
      puts "[#{p.class.name}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
    end
  end

  def create_book
    print 'Title:'
    title = gets.chomp
    print 'author:'
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book Created Successfully'
  end

  def check_number(msg)
    number = 0
    loop do
      print msg
      input = gets.chomp.to_i
      if input.is_a?(Integer) && input.positive?
        number = input
        break
      else
        puts 'Please, enter a valid input!'
      end
    end
    number
  end

  def check_options(msg, options)
    number = 0
    loop do
      print msg
      input = gets.chomp.to_i
      if options.include?(input)
        number = input
        break
      else
        puts 'Please, enter a valid input!'
      end
    end
    number
  end

  def check_permission(permission)
    case permission
    when 'y' then permission = true
    when 'n' then permission = false
    end
    permission
  end

  def create_person
    num = check_options('Do you want to create a student (1) or a teacher (2)? [input the number]: ', [1, 2])
    age = check_number('Age:')

    print 'name:'
    name = gets.chomp
    classroom = check_number('Classroom:')

    case num
    when 1
      print 'Has parent permission? [y/n]:'
      permission = gets.chomp

      permission = check_permission(permission)

      @person.push(Student.new(age, name, classroom, parent_permission: permission))
    when 2
      print 'Specialization:'
      specialty = gets.chomp

      @person.push(Teacher.new(age, specialty, name: name))
    else
      puts 'Invalid number, please enter number again!'
    end
    puts 'Person created successfully'
  end

  def create_rental
    puts 'Select a book from the following list'
    @books.each_with_index do |book, index|
      puts "#{index + 1}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_num = gets.chomp.to_i

    puts 'Select a person from the following list (not id)'
    @person.each_with_index do |per, index|
      puts "#{index + 1}) [#{per.class}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end

    iam = gets.chomp.to_i

    print 'Date:'
    date = gets.chomp

    p_index = iam - 1

    @rentals.push(Rental.new(date, @books[book_num - 1], @person[p_index]))
    puts 'Rental Created successfully'
  end

  def list_rentals
    print 'ID of person:'
    id = gets.chomp
    id = id.to_i

    puts 'Rentals'

    @rentals.each do |rental|
      puts "Date: #{rental.date} Book: \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
  end
end
