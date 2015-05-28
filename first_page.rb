require "pp"

# 2.1

users = [
  {id: 1, name: 'John'},
  {id: 2, name: 'Pete'},
  {id: 3, name: 'Mary'}
]

user_names = users.map{ |u| u[:name] }

pp user_names

# 2.2

d = Time.now.strftime("%Y-%m-%d")
p d

# 2.3

class Person
  include Comparable
  attr_accessor :last_name, :first_name
  def <=>(other)
    @last_name <=> other.last_name
  end
end

p1 = Person.new
p1.last_name = "Zoltan"

p2 = Person.new
p2.last_name = "Adam"

p p1>p2



