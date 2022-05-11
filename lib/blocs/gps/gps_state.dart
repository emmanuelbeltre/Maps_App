part of 'gps_bloc.dart';

class GpsState extends Equatable {
  final bool isGpsEnable;
  final bool isGpsermssionGranted;

  bool get isAllGranted => isGpsEnable && isGpsermssionGranted;

  const GpsState(
      {required this.isGpsEnable, required this.isGpsermssionGranted});

  GpsState copyWith({
    bool? isGpsEnable,
    bool? isGpsermssionGranted,
  }) =>
      GpsState(
          isGpsEnable: isGpsEnable ?? this.isGpsEnable,
          isGpsermssionGranted:
              isGpsermssionGranted ?? this.isGpsermssionGranted);

  @override
  List<Object> get props => [isGpsEnable, isGpsermssionGranted];

  @override
  String toString() {
    // TODO: implement toString
    return '{isGpsEnable: $isGpsEnable , isGpsPermissionGranted: $isGpsermssionGranted}';
  }
}

// class GpsInitial extends GpsState {
//   GpsInitial({required bool isGpsEnable, required bool isGpsermssionGranted}) : super(isGpsEnable: isGpsEnable, isGpsermssionGranted: isGpsermssionGranted);
// }
