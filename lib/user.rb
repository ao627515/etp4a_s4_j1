class User
    attr_accessor :email, :age
  
    @@users = []
  
    def initialize(email, age)
      @email = email
      @age = age
      @@users.push(self)
    end
  public
    def all
      @@users
    end
  end
