import 'dart:collection';

class ShopModel {
  final String name;
  final String physicalAddress;
  final String latLong;
  final String _gMapAddres;
  final List<String> _phones;
  ShopModel({
    required this.name,
    required this.physicalAddress,
    required this.latLong,
    required String googleAddress,
    required List<String> phoneList,
  })  : _gMapAddres = googleAddress,
        _phones = UnmodifiableListView(phoneList);

  String get imgPath =>
      'assets/shops/${name.replaceAll(' ', '_').toLowerCase()}.png';

  Uri get mapAddress => Uri.parse(_gMapAddres);

  Uri phoneUri(String chosenNum) => Uri.parse('tel: $chosenNum');

  List<String> get getPhones => _phones;
}

final List<ShopModel> shopList = [
  ShopModel(
    name: 'Shop 1',
    physicalAddress: 'LanThit Road,Insein,Yangon.',
    latLong: '16.89167705231578, 96.1168224808575',
    googleAddress: 'https://goo.gl/maps/QyMsLSmTCvQVA3sJ7',
    phoneList: [
      '0911231234',
      '14123541',
    ],
  ),
  ShopModel(
    name: 'Shop 2',
    physicalAddress:
        'Corner of Hla Theingi St and Kin Wun Min Gyi St,Shwe Lin Pan Industrial Zone,Yangon.',
    latLong: '16.908355823994558, 96.0724319',
    googleAddress: 'https://goo.gl/maps/VUkaG6rCM1hK7Mow8',
    phoneList: [
      '0911231234',
      '14123541',
    ],
  ),
];
