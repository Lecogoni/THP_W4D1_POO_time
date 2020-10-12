require "pry"
require 'time'

class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start, ending, title_save, attendees)
        @start_date = Time.parse(start)
        @duration = ending
        @title = title_save
        @attendees = attendees
    end

    def postpone_24h
        @start_date = @start_date + 3600 * 24
    end


    def end_date
        @end_date = @start_date + (duration * 60)
        return @end_date
    end

    def is_past?
        return Time.now > @start_date
    end

    def is_future?
        return !self.is_past?
    end

    def is_soon?
        return Time.now >= (@start_date - (30 * 60)) && Time.now <= @start_date 
    end
    
    def to_s
        puts "
        >Titre : #{@title}
        >Date de début : #{@start_date}
        >Durée : #{@duration}
        >Invités : #{@attendees}"
    end
end
 