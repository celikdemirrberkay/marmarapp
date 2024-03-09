part of '../view/home_view.dart';

@immutable
final class _EventsContainer extends StatefulWidget {
  const _EventsContainer();

  @override
  State<_EventsContainer> createState() => __EventsContainerState();
}

class __EventsContainerState extends State<_EventsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: context.circularBorderRadius(
          radius: 12,
        ),
      ),
    );
  }
}
