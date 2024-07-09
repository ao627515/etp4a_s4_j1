class User
    attr_accessor :email, :age
  
    @@users = []
  
    def initialize(email, age)
      @email = email
      @age = age
      @@users.push(self)
    end
  public
    def self.all
      @@users
    end
  end
