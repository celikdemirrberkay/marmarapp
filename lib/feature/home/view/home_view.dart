import 'package:dart_vader/dart_vader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marmarapp/core/extension/context_ext.dart';
import '../../../core/theme/color/app_colors.dart';

part '../widgets/events_container.dart';

/// Home View
class HomeView extends StatefulWidget {
  /// Constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeViewAppbar(),
      body: SizedBox.expand(
        child: Column(
          children: _childrenOfColumn(),
        ),
      ),
    );
  }

  List<Widget> _childrenOfColumn() => [
        context.spacerWithFlex(flex: 2),
        Expanded(flex: 3, child: _discoverEventsText()),
        context.spacerWithFlex(flex: 2),
        Expanded(flex: 12, child: _eventsContainerRow()),
        context.spacerWithFlex(flex: 81),
      ];

  /// Events container
  Widget _eventsContainerRow() {
    return Row(
      children: [
        context.spacerWithFlex(flex: 5),
        const Expanded(flex: 30, child: _EventsContainer()),
        context.spacerWithFlex(flex: 5),
        const Expanded(flex: 30, child: _EventsContainer()),
        context.spacerWithFlex(flex: 5),
        const Expanded(flex: 30, child: _EventsContainer()),
        context.spacerWithFlex(flex: 5),
      ],
    );
  }

  Widget _discoverEventsText() {
    return Row(
      children: [
        context.spacerWithFlex(flex: 5),
        Expanded(
          flex: 30,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(
              'Discover Events',
              style: context.openSans(),
            ),
          ),
        ),
        context.spacerWithFlex(flex: 45),
        Expanded(
          flex: 15,
          child: FittedBox(
            child: Text(
              'See more',
              style: context.openSans(
                textStyle: context.bodyLarge?.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
        context.spacerWithFlex(flex: 5),
      ],
    );
  }

  /// App bar of home view
  AppBar _homeViewAppbar() {
    return AppBar(
      elevation: 10,
      backgroundColor: AppColors.primaryColor.withOpacity(0.3),
      centerTitle: false,
      title: _homeViewAppbarText(),
      actions: [_friendsIconButton()],
    );
  }

  /// Returns a Widget that is an IconButton
  Widget _friendsIconButton() => FittedBox(
        child: IconButton(
          icon: const Icon(
            Icons.groups_outlined,
            color: AppColors.primaryColor,
          ),
          onPressed: () {},
        ),
      );

  // Returns a Text widget with the text 'Marmarapp'
  Widget _homeViewAppbarText() {
    return FittedBox(
      child: Text(
        'Marmarapp',
        style: context.pacifico(
          textStyle: context.appTextTheme.headlineMedium?.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
