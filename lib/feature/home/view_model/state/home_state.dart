import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

///HomeState
final class HomeState extends Equatable {
  ///HomeViewState constructor
  const HomeState({
    required this.isLoading,
    this.users,
  });

  ///
  final bool isLoading;

  final List<User>? users;

  @override
  List<Object?> get props => [
        isLoading,
        users,
      ];

  ///HomeState copywith
  HomeState copyWith({bool? isLoading, List<User>? users}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      users: users ?? this.users,
    );
  }
}
