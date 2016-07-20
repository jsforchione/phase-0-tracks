hotel_jessica = {
    penthouse: {
        name: 'Penthouse',
        room_info: {
        total_rooms: 5,
        available_rooms: 1
        },
        amenities: [
            "Champagne",
            "Private hot tub on balcony",
            "Butler"
        ]
    },
    suite: {
        name: 'Suite',
        room_info: {
            total_rooms: 15,
            available_rooms: 4
        },
        amenities: [
            "Champagne",
            "Chocolate and Strawberries"
        ]
    },
    basic_room: {
        name: 'Basic Room',
        room_info: {
            total_rooms: 50,
            available_rooms: 17
        },
        amenities: [
            "Snack Bar"
        ]
    }
}

#print the name of the penthouse in the hotel Jessica
p hotel_jessica[:penthouse][:name]

#add to the amenities in the basic room
p hotel_jessica[:basic_room][:amenities].push("Tea and Coffee")

#reverse the order of amenities in the penthouse
p hotel_jessica[:penthouse][:amenities].reverse

#print how many suites are available
p hotel_jessica[:suite][:room_info][:available_rooms]