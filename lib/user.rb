class User
  attr_accessor :email, :age

  @@users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@users.push(self)
  end

  def self.all
    @@users
  end

  def self.find_by_email(email)
    @@users.find { |user| user.email == email }
  end
end