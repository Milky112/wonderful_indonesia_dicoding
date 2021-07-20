import 'package:flutter/material.dart';

class CityBundle {
  final int id, places;
  final String title, address, imageSrc;
  List<DestinationBundle> destinations;

  CityBundle(
      {required this.id,
      required this.places,
      required this.title,
      required this.address,
      required this.imageSrc,
      required this.destinations});
}

class DestinationBundle {
  final int id, rating;
  final String title, address;
  final List<String> imageSrc;

  DestinationBundle(
      {required this.id,
      required this.rating,
      required this.title,
      required this.address,
      required this.imageSrc});
}

List<String> ImageBali = [
  'assets/images/pantai_kuta.jpg',
  'assets/images/pantai_kuta.jpg',
  'assets/images/pura_tanah_lot.jpg',
  'assets/images/nusa_peninda.jpg',
];

List<String> ImageTanahLot = [
  'assets/images/pura_tanah_lot.jpg',
  'assets/images/pura_tanah_lot.jpg',
  'assets/images/pantai_kuta.jpg',
  'assets/images/nusa_peninda.jpg',
];

List<String> ImageNusaPerinda = [
  'assets/images/nusa_peninda.jpg',
  'assets/images/nusa_peninda.jpg',
  'assets/images/pantai_kuta.jpg',
  'assets/images/pura_tanah_lot.jpg',
];

//list of places
List<DestinationBundle> destinationsBali = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: ImageBali,
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: ImageTanahLot,
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: ImageNusaPerinda,
  )
];

List<DestinationBundle> destinationsJakarta = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: ImageBali,
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: ImageTanahLot,
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: ImageNusaPerinda,
  ),
  DestinationBundle(
    id: 4,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: ImageNusaPerinda,
  ),
  DestinationBundle(
    id: 5,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: ImageNusaPerinda,
  )
];

List<DestinationBundle> destinationsBestPlaces = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: ImageBali,
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: ImageTanahLot,
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: ImageNusaPerinda,
  )
];

//List of City
List<CityBundle> cityBundle = [
  CityBundle(
    id: 1,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 2,
    places: destinationsJakarta.length,
    title: 'Jakarta',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsJakarta,
  ),
  CityBundle(
    id: 3,
    places: destinationsBali.length,
    title: 'Medan',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
];

List<CityBundle> allCityBundle = [
  CityBundle(
    id: 1,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 2,
    places: destinationsJakarta.length,
    title: 'Jakarta',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsJakarta,
  ),
  CityBundle(
    id: 3,
    places: destinationsBali.length,
    title: 'Medan',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 4,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 5,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 6,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 7,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
  CityBundle(
    id: 8,
    places: destinationsBali.length,
    title: 'Bali',
    address: 'East Indonesia',
    imageSrc: 'assets/images/pantai_kuta.jpg',
    destinations: destinationsBali,
  ),
];
