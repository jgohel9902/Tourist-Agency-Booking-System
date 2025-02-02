# Tourist Agency Booking System

## Overview
This is a **Dart console application** that allows a **Tourist Agency** to book trips for three types of customers:
- **Individuals** (Requires travel insurance and workplace notification)
- **Families** (Requires family health insurance and records a family member staying in Canada)
- **Groups** (Requires organizing hardware and notifies the destination company)

The program follows **Object-Oriented Programming (OOP)** principles, using **polymorphism, encapsulation, and inheritance**. It ensures **input validation**, uses **lists** for customer storage, and calculates the **total price of all trips**.

## Features
✅ Book trips for **individuals, families, and groups**  
✅ Calculate **total price of all trips**  
✅ **Polymorphism**: Uses a base class (`Customer`) and three subclasses  
✅ **Flow Control**: Uses **loops**, **if-else**, and **switch-case**  
✅ **Input Validation**: Ensures correct data entry  
✅ **List Collection**: Stores multiple customer entries  
✅ **Arrow Function**: Used for calculating the total price  

## Technologies Used
- **Dart**
- **VS Code**

## How to Run
### 1️⃣ Install Dart
If you haven’t installed Dart, download it from: [Dart Official Site](https://dart.dev/get-dart)  

Example Usage

Enter customer type (1: Individual, 2: Family, 3: Group): 
1
Enter Destination: 
Paris
Enter Contact Phone: 
+123456789
Enter Contact Name: 
John Doe
Enter Price of Trip: 
1000
Enter Travel Insurance Policy Number: 
ABC123

Would you like to add another customer? (yes/no)
no

Processing all customers...
John Doe's trip to Paris has been booked.
John Doe is being transported to the airport.
Travel Insurance Policy: ABC123
Notifying workplace of John Doe.
------------------------
Total cost of all trips: $1000.00
