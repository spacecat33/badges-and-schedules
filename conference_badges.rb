#First task
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.map {|attendee| "Hello, my name is #{attendee}."}
end
#or
def batch_badge_creator(attendees)
    messages = []
    attendees.each do |attendee|
        messages << "Hello, my name is #{attendee}."
    end
    return messages
end

#Second task
def assign_rooms(attendees)
    badgeArray = []
    room_assignments = 1
    attendees.each do |attendee|
        badgeArray << "Hello, #{attendee}! You'll be assigned to room #{room_assignments}!"
        room_assignments += 1
    end
    badgeArray
end
#or
def assign_rooms(attendees)
    badgeArray = []
    attendees.each_with_index do |attendee, room_assignment|
        badgeArray << "Hello, #{attendee}! You'll be assigned to room #{room_assignment + 1}!"
    end
    return badgeArray
end
#or
def assign_rooms(attendees)
    badgeArray = []
    attendees.each_with_index {|attendee, room_assignment| badgeArray.push("Hello, #{attendee}! You'll be assigned to room #{room_assignment + 1}!")}
    return badgeArray
end

#Third task
def printer(attendees)
    attendees.map do |attendee| 
        puts "Hello, my name is #{attendee}."
    end
    room_assignments = 1
    attendees.each do |attendee|
        puts "Hello, #{attendee}! You'll be assigned to room #{room_assignments}!"
        room_assignments += 1
    end
end
#or
def printer(attendees)
    batch_badge_creator(attendees).each do |attendee|
        puts attendee
    end
    assign_rooms(attendees).each do |room_assignment|
        puts room_assignment
    end
end