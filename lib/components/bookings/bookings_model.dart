class city {
  final String cityName;

  const city({
    required this.cityName,
  });
}

class model {
  final String modelName;

  const model({
    required this.modelName,
  });
}

class Color {
  final String colorName;

  const Color({
    required this.colorName,
  });
}

class Location {
  final String locationName;

  const Location({
    required this.locationName,
  });
}

class Variant {
  final String variantName;

  const Variant({
    required this.variantName,
  });
}

class Bookinglist {
  String bookingId;
  String nameOfTheCstomer;
  String vehicleDetails;
  String variant;
  String carColor;
  String bookingDate;
  String imageName;

  Bookinglist(
      {required this.bookingId,
      required this.nameOfTheCstomer,
      required this.bookingDate,
      required this.carColor,
      required this.variant,
      required this.vehicleDetails,
      required this.imageName});
}

List<Bookinglist> getBookinglistData() {
  return [
    Bookinglist(
        bookingId: "MA017101",
        nameOfTheCstomer: "Rajesh",
        bookingDate: "22-01-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "Alto",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017112",
        nameOfTheCstomer: "Dinesh",
        bookingDate: "02-01-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "SwiftDezire",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017118",
        nameOfTheCstomer: "Naresh",
        bookingDate: "1-08-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "Baleno",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017191",
        nameOfTheCstomer: "Mahesh",
        bookingDate: "18-01-2023",
        carColor: "Metalic Car",
        variant: "Mxi",
        vehicleDetails: "Innova",
        imageName: ''),
    Bookinglist(
        bookingId: "MA019801",
        nameOfTheCstomer: "suresh",
        bookingDate: "29-05-2023",
        carColor: "Naroon",
        variant: "Mxi",
        vehicleDetails: "Ertiga",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017101",
        nameOfTheCstomer: "Ramesh",
        bookingDate: "22-01-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "Swift",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017101",
        nameOfTheCstomer: "Harish",
        bookingDate: "22-01-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "Swift",
        imageName: ''),
    Bookinglist(
        bookingId: "MA017101",
        nameOfTheCstomer: "Ganesh",
        bookingDate: "22-01-2023",
        carColor: "Red",
        variant: "Mxi",
        vehicleDetails: "Swift",
        imageName: 'AssetImage("assets/images/12.png")'),
  ];
}

List<city> cities = [
  const city(cityName: "AP"),
  const city(cityName: "Telangana"),
  const city(cityName: "Tamilnadu"),
];

List<model> models = [
  const model(modelName: "2023-2024"),
  const model(modelName: "2022-2023"),
  const model(modelName: "2021-2022"),
];
