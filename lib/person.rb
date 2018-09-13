class Person
  attr_reader :first_name, :last_name, :age, :driver_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  private
  def driver_name
    "#{first_name} #{last_name}"
  end
end
