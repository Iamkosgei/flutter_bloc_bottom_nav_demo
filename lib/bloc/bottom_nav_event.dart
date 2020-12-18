part of 'bottom_nav_bloc.dart';

@immutable
abstract class BottomNavEvent {}

class NavigateToAnotherTab extends BottomNavEvent {
  final int index;
  NavigateToAnotherTab(this.index);
}
