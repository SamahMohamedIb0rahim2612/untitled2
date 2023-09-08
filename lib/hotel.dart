import 'customer.dart';
import 'room.dart';

class Hotel {
  String? name;
  late List<Room> rooms;

  Hotel(this.name, List<Room> list) {
    rooms = []; // Initialize the rooms field with an empty list
  }

  String? get hotelName => name;
  set hotelName(String? name) => this.name = name;

  void displayAvailableRooms() {
    //print('Available Rooms: ${room.}');
    print("Available Rooms: ");
    for (var room in rooms) {
      if (room.roomIsAvailable == true) {
        room.display();
        print('Room is Available');
        print('----------------');
      }
      else {
        room.display();
        print('Room is NotAvailable');
        print('----------------');
      }
    }
  }

//   bookRoom(int? roomNumber, Customer customer) {print('Congratulations, ${customer.customerName}! Room ${rooms.roomNumber} is booked.');
//   print('Booking Details:');
//   print('Room Number: ${bookedRoom.number}');
//   print('Room Type: ${bookedRoom.type}');
//   print('Booked By: ${bookedRoom.bookedBy.name}');
//   print('Email: ${bookedRoom.bookedBy.email}');
//   print('Phone Number: ${bookedRoom.bookedBy.phoneNumber}'); }
}
