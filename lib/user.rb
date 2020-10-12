require "pry"

class User

    attr_accessor :email, :age
    @@all_user = []

    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save

        @@all_user << self
    end

    def self.all
        return @@all_user
    end
    
    def self.find_by_email(email_to_search)
        @@all_user.each do |user|
            if user.email == email_to_search 
                return user.age
            end
        end
    end

end