import 'dart:convert';
import 'dart:io';

class PrinterDevice {
  String name;
  String? operatingSystem = Platform.operatingSystem;
  String? vendorId;
  String? productId;
  String? address;

  PrinterDevice({
    required this.name,
    this.address,
    this.vendorId,
    this.productId,
    this.operatingSystem,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'operatingSystem': operatingSystem,
        'vendorId': vendorId,
        'pr8oductId': productId,
        'address': address,
      };

  factory PrinterDevice.fromMap(Map<String, dynamic> json) {
    return PrinterDevice(
      name: json['name'],
      operatingSystem: json['operatingSystem'],
      vendorId: json['vendorId'],
      productId: json['productId'],
      address: json['address'],
    );
  }

  factory PrinterDevice.fromJson(String json) => PrinterDevice.fromMap(
        jsonDecode(json),
      );

  String toJson() => jsonEncode(toMap());
}
