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

private

    def add_hours(time, hours)
        time + (hours * 3600)
    end

end