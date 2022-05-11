part of 'location_bloc.dart';

class LocationState extends Equatable {
  final bool followingUser;

  //TODO:
  //Ultimo geolocation conocdo

  //Historia de las ultimas ubicaciones

  const LocationState({this.followingUser = false});

  @override
  List<Object> get props => [followingUser];
}
