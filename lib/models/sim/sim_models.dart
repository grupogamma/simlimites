import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SimLocalCountries extends Equatable {
  final String productId;
  final String productName;
  final String shortDescription;
  final String fullDescription;
  final String productType;
  final List<String> characteristics;
  final List<String> coverage;
  final String image;
  final PlanData planes;

  SimLocalCountries({
    required this.productId,
    required this.productName,
    required this.shortDescription,
    required this.fullDescription,
    required this.productType,
    required this.characteristics,
    required this.coverage,
    required this.image,
    required this.planes,
  });

  @override
  List<Object?> get props => [
        productId,
        productName,
        shortDescription,
        fullDescription,
        productType,
        characteristics,
        coverage,
        image,
        planes,
      ];

  static List<SimLocalCountries> countries = [
    SimLocalCountries(
      productId: 'productId',
      productName: 'Estados Unidos',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [
        'Estados Unidos',
        'Alaska',
        'Hawai',
        'Puerto Rico',
        'Islas Vírgenes de EE. UU.'
      ],
      image: '/assets/mexico.png',
      planes: PlanData(
        price: 23,
        currentyType: 'USD',
        days: '3',
      ),
    ),
    SimLocalCountries(
      productId: 'productId',
      productName: 'Colombia',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [],
      image: '/assets/eu.png',
      planes: PlanData(
        price: 23,
        currentyType: 'USD',
        days: '3',
      ),
    ),
    SimLocalCountries(
      productId: 'productId',
      productName: 'Europa',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [],
      image: '/assets/canada.png',
      planes: const PlanData(
        price: 23,
        currentyType: 'USD',
        days: '3',
      ),
    ),
    SimLocalCountries(
      productId: 'productId',
      productName: 'México',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [],
      image: '/assets/puerto-rico.png',
      planes: const PlanData(price: 23, currentyType: 'USD', days: '3'),
    ),
    SimLocalCountries(
      productId: 'productId',
      productName: 'Canadá',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [],
      image: '/assets/puerto-rico.png',
      planes: const PlanData(price: 23, currentyType: 'USD', days: '3'),
    ),
    SimLocalCountries(
      productId: 'productId',
      productName: 'Perú',
      shortDescription: 'shortDescription',
      fullDescription: 'fullDescription',
      productType: 'productType',
      characteristics: const [
        'Llamadas ilimitadas en país de cobertura',
        'Datos ilimitados en 4G LTE (sin degradación',
      ],
      coverage: const [],
      image: '/assets/puerto-rico.png',
      planes: const PlanData(price: 23, currentyType: 'USD', days: '3'),
    ),
  ];
}

class PlanData extends Equatable {
  final String days;
  final int price;
  final String currentyType;

  const PlanData({
    required this.price,
    required this.currentyType,
    required this.days,
  });

  @override
  List<Object?> get props => [days, price, currentyType];
}
