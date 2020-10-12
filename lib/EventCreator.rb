require "pry"

class EventCreator
    
    def self.create()

        puts "Salut, tu veux créer un événement ? Cool !
        Commençons. Quel est le nom de l'événement ?"
        name = gets.chomp
    
        puts "date ?"
        date = gets.chomp
    
        puts "durée ?"
        duration = gets.chomp
    
        puts "participant ?"
        attendees = gets.chomp
        Event.new(date, duration, name, attendees)

    end 

end 