import 'package:flutter/material.dart';
import './tile_overlay.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('locations'),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              itemBuilder(context, index, locations[index]),
        ));
  }

  onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }

  Widget itemBuilder(BuildContext context, int index, Location location) {
    return GestureDetector(
      onTap: () => onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(assetPath: location.imagePath, height: 245.0),
            TileOverlay(location),
          ],
        ),
      ),
    );
  }
}
