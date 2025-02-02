import 'dart:io';

abstract class Customer {
  String destination;
  String contactPhone;
  String contactName;
  double Price;

  Customer(this.destination, this.contactPhone, this.contactName, this.Price);

  void travelBooking() {
    print("$contactName's trip to $destination has been booked successfully.");
  }

  void getTransitToAirport() {
    print("$contactName is being transported to the airport.");
  }

  void additionalRequirements();
}

class IndividualCustomer extends Customer {
  String travelInsurancepolicy;

  IndividualCustomer(String destination, String contactPhone,
      String contactName, double price, this.travelInsurancepolicy)
      : super(destination, contactPhone, contactName, price);

  @override
  void additionalRequirements() {
    print("Travel Insurance Policy is : $travelInsurancepolicy");
    print("Notifying workplace of $contactName.");
  }
}

class FamilyofCustomer extends Customer {
  String insuranceCompany;
  String familymemberInCanada;

  FamilyofCustomer(String destination, String contactPhone, String contactName,
      double price, this.insuranceCompany, this.familymemberInCanada)
      : super(destination, contactPhone, contactName, price);

  @override
  void additionalRequirements() {
    print("Family Health Coverage provided by: $insuranceCompany");
    print("Family member staying in Canada: $familymemberInCanada");
  }
}

class GroupofCustomer extends Customer {
  String organizingHardware;
  String destinationCompany;

  GroupofCustomer(String destination, String contactPhone, String contactName,
      double price, this.organizingHardware, this.destinationCompany)
      : super(destination, contactPhone, contactName, price);
  @override
  void additionalRequirements() {
    print("Organizing Hardware: $organizingHardware");
    print("Notifying destination company: $destinationCompany");
  }
}

void main() {
  List<Customer> customers = [];
  bool increaseMore = true;

  while (increaseMore) {
    print("\nEnter customer type (1. Individual, 2. Family, 3. Group): ");
    int customerCategory = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    print("Enter destination: ");
    String destination = stdin.readLineSync() ?? '';

    print("Enter ContactPhone: ");
    String contactPhoneNumber = stdin.readLineSync() ?? '';

    print("Enter Contact Name: ");
    String contactName = stdin.readLineSync() ?? '';

    double price;
    while (true) {
      print("Enter Price of Trip: ");
      price = double.tryParse(stdin.readLineSync() ?? '') ?? -1;
      if (price > 0) break;
      print("Invalid price. Please enter a positive number.");
    }

    switch (customerCategory) {
      case 1:
        print("Enter Travel Insurance Policy Number: ");
        String policyNumber = stdin.readLineSync() ?? '';
        customers.add(IndividualCustomer(
            destination, contactPhoneNumber, contactName, price, policyNumber));
        break;

      case 2:
        print("Enter Family Insurance Company Name: ");
        String insuranceCompany = stdin.readLineSync() ?? '';
        print("Enter name of Family member(s) staying in Canada: ");
        String familyMembers = stdin.readLineSync() ?? '';
        customers.add(FamilyofCustomer(destination, contactPhoneNumber,
            contactName, price, insuranceCompany, familyMembers));
        break;

      case 3:
        print("Enter Organizing Hardware (whistles, flags, etc.): ");
        String hardware = stdin.readLineSync() ?? '';
        print("Enter Destination Company Accepting the Group: ");
        String destinationCompany = stdin.readLineSync() ?? '';
        customers.add(GroupofCustomer(destination, contactPhoneNumber,
            contactName, price, hardware, destinationCompany));
        break;

      default:
        print("Invalid selection, please selct from 1,2 or 3");
        continue;
    }
    print("\nWould you like to add another customer? (yes/no): ");
    String userSelection = stdin.readLineSync()?.toLowerCase() ?? '';
    increaseMore = userSelection == 'yes';
  }
  print("\nProcessing all customers....\n");

  for (var customer in customers) {
    customer.travelBooking();
    customer.getTransitToAirport();
    customer.additionalRequirements();
    print("================================");
    print("================================");
  }

  double totalPrice =
      customers.fold(0, (sum, customer) => sum + customer.Price);
  print("Total cost of all trips: \$${totalPrice.toStringAsFixed(2)}");
}
