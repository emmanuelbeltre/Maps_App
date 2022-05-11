import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState()) {
    on<LocationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  Future getCutrrentPossition() async {
    final position = await Geolocator.getCurrentPosition();
    print('Position: ${position}');

    //TODO:  Retornar un objeto de latitud y longitud
  }

  void startFollowingUser() {
    Geolocator.getPositionStream().listen((event) {
      final position = event;

      print('Position: ${position}');
    });
  }
}
