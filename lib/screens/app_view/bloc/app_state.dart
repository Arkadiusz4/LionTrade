part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {
  final AppStatus appStatus;
  final User user;

  const AppState._({
    required this.appStatus,
    this.user = User.empty,
  });

  const AppState.authenticated(User user)
      : this._(
          appStatus: AppStatus.authenticated,
          user: user,
        );

  const AppState.unauthenticated()
      : this._(
          appStatus: AppStatus.unauthenticated,
        );

  @override
  List<Object> get props => [appStatus, user];
}
