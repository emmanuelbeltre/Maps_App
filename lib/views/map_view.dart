import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:maps_app/blocs/blocs.dart';

class MapView extends StatelessWidget {
  final initialLocation;

  const MapView({required this.initialLocation});

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapBloc>(context);

    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 15);

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        compassEnabled: false,
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,

        onMapCreated: (controller) =>
            mapBloc.add(OnMapInitializedEvent(controller)),
        //TODO:  Markers,
        //TODO:  ,Polilines
        //TODO:  ,Cuando Se Mueve el mapa
      ),
    );
  }
}
