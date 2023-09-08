import 'dart:io';
import 'customer.dart';
import 'hotel.dart';
import 'room.dart';

void main(){

  var room1 = Room(101, 'Single', true );
  var room2 = Room(102, 'Double', true );
  var room3 = Room(103, 'Suite', false );
  var room4 = Room(105, 'Single', true );
  var room5 = Room(201, 'Double', false);

  var hotel = Hotel("Cairo's Hotel", [room1, room2, room3, room4, room5]);
  hotel.rooms.add(room1);
  hotel.rooms.add(room2);
  hotel.rooms.add(room3);
  hotel.rooms.add(room4);
  hotel.rooms.add(room5);

  print('Welcome to ${hotel.name}');
  hotel.displayAvailableRooms();

  print('Enter the room number you want to book:');
  int? roomNumber = int.parse(stdin.readLineSync()!);

  print ('Enter your name:');
  String? customerName =  stdin.readLineSync()!;

  print('Enter your age:');
  int? customerAge = int.parse(stdin.readLineSync()!);

  print('Enter your phone number:');
  int? customerPhoneNumber = int.parse(stdin.readLineSync()!);

  print('Enter your email:');
  String? customerEmail =  stdin.readLineSync()!;

  print('Enter your password:');
  int?  customerPassword = int.parse(stdin.readLineSync()!);

  var customer = Customer( customerName, customerAge as int, customerPhoneNumber as int,
      customerEmail, customerPassword as int );

  //hotel.bookRoom(roomNumber, customer);

  //if (hotel.rooms.roomNumber != null) {
    //print('Congratulations, ${customer.customerName}! Room ${customer.roomNumber} is booked.');
   // print('Booking Details:');
 //   print('Room Number: ${bookedRoom.number}');
   // print('Room Type: ${bookedRoom.type}');
   // print('Booked By: ${bookedRoom.bookedBy.name}');
   // print('Email: ${bookedRoom.bookedBy.email}');
   // print('Phone Number: ${bookedRoom.bookedBy.phoneNumber}');    }
  //else {   print('Sorry, the selected room is not available.');   }
}

String _getUserInput(String prompt) {
  stdout.write('$prompt ');
  return stdin.readLineSync()!;
}
