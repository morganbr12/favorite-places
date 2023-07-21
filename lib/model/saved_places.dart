import 'dart:io';

import 'package:favorite_places/provider/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedPlaces extends StateNotifier<List<Places>> {
  SavedPlaces() : super(const []);

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Places(name: title, image: image, location: location);

    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<SavedPlaces, List<Places>>(
  (ref) => SavedPlaces(),
);
