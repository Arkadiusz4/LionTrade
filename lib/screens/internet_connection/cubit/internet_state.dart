part of 'internet_cubit.dart';

enum ConnectionType {
  wifi,
  mobile,
}

abstract class InternetState extends Equatable {
  const InternetState();
}

class InternetLoading extends InternetState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  const InternetConnected({
    required this.connectionType,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class InternetDisconnected extends InternetState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}