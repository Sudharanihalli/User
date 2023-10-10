
class User
    attr_accessor :name, :email, :age
  
    def initialize(name, email, age)
      @name = name
      @email = email
      @age = age
    end
  
    def to_s
      "Name: #{@name}, Email: #{@email}, Age: #{@age}"
    end
  end

  users = []
  10.times do |i|
    puts "Enter information for User ##{i + 1}:"
    print "Name: "
    name = gets.chomp
    print "Email: "
    email = gets.chomp
    print "Age: "
    age = gets.chomp.to_i
  
    user = User.new(name, email, age)
    users << user
  end
  
  puts "\nUser Information:"
  users.each_with_index do |user, index|
    puts "User ##{index + 1}: #{user}"
  end
  