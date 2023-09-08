import 'customer.dart';

class Room {
  int? _number;
  String? _type;
  bool? _isAvailable;
  Customer? _bookedBy;

  Room(int? number, String? type, bool? isAvailable) {
    this._number = number;
    this._type= type;
    this._isAvailable= isAvailable;
  }

  int? get roomNumber => _number;
  set roomNumber(int? number) => this._number = number;

  String? get roomType => _type;
  set roomType(String? type) => this._type = type;

  bool? get roomIsAvailable => _isAvailable;
  set roomIsAvailable(bool? isAvailable) => this._isAvailable = isAvailable;

  Customer? get bookedBy => _bookedBy;
  set bookedBy(Customer? customer) {
    var room;
    if (room.IsAvailable) {
      _bookedBy = customer;
    }
  }

  void display() {
    print('Room Details:');
    print('Room Number: $roomNumber');
    print('Room Type: $roomType');

    if (bookedBy != null) {
      print('Booked By: ${bookedBy?.customerName}');
      print('Age: ${bookedBy?.customerAge }');
      print('Phone Number: ${bookedBy?.customerPhoneNumber}');
      print('Email: ${bookedBy?.customerEmail}');
      print('Password: ${bookedBy?.customerPassword}');
    }
  } //void display
} //room class