require 'time' 

class Event

    attr_accessor :start_date , :duration , :title , :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration.to_i
        @title = title
        @attendees = attendees
    end

    def postpone_24h
        @start_date = add_hours(@start_date, 24)
    end

    def end_date
        @start_date = add_minutes(@start_date, @duration)
    end
    
    def is_past?
        @start_date < Time.now
    end

    def is_future?
        !is_past?
    end

    def is_soon?(minutes = 30)
        soon = add_minutes(Time.now, minutes)
        soon  < @start_date ? true : false
    end

    def to_s
        puts "Titre: #{@title}"
        puts "Date de début: #{@start_date.strftime("%Y-%m-%d %H:%M")}"
        puts "Duree: #{@duration}"
        puts "Invités: "+@attendees.join(', ')
    end

private

    def add_hours(time, hours)
        time + (hours * 3600)
    end

    def add_minutes(time, minutes)
        time + (minutes * 60)
    end


end