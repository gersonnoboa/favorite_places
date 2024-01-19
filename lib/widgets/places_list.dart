import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/place_details_screen.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  void _onPlacePressed(BuildContext context, Place place) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlaceDetailsScreen(
          place: place,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet',
          style: theme.textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];

        return ListTile(
          title: Text(
            place.title,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          onTap: () {
            _onPlacePressed(context, place);
          },
        );
      },
    );
  }
}
