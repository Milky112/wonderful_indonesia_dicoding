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
  final String title, address, imageSrc;

  DestinationBundle(
      {required this.id,
      required this.rating,
      required this.title,
      required this.address,
      required this.imageSrc});
}

//list of places
List<DestinationBundle> destinationsBali = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: 'assets/images/pantai_kuta.jpg',
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: 'assets/images/pura_tanah_lot.jpg',
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: 'assets/images/nusa_peninda.jpg',
  )
];

List<DestinationBundle> destinationsJakarta = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: 'assets/images/pantai_kuta.jpg',
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: 'assets/images/pura_tanah_lot.jpg',
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: 'assets/images/nusa_peninda.jpg',
  ),
  DestinationBundle(
    id: 4,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: 'assets/images/nusa_peninda.jpg',
  ),
  DestinationBundle(
    id: 5,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: 'assets/images/nusa_peninda.jpg',
  )
];

List<DestinationBundle> destinationsBestPlaces = [
  DestinationBundle(
    id: 1,
    rating: 5,
    title: "Pantai Kuta",
    address: "Pantai Kuta Barat",
    imageSrc: 'assets/images/pantai_kuta.jpg',
  ),
  DestinationBundle(
    id: 2,
    rating: 4,
    title: "Pura Tanah Lot",
    address: "Pura Tanah Lot",
    imageSrc: 'assets/images/pura_tanah_lot.jpg',
  ),
  DestinationBundle(
    id: 3,
    rating: 5,
    title: "Nusa Peninda",
    address: "Nusa Peninda Bali",
    imageSrc: 'assets/images/nusa_peninda.jpg',
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
