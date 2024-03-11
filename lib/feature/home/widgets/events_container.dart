part of '../view/home_view.dart';

@immutable
final class _EventsContainer extends StatefulWidget {
  const _EventsContainer({
    required this.universityName,
    required this.universityAssetPath,
  });

  final String universityName;
  final String universityAssetPath;

  @override
  State<_EventsContainer> createState() => __EventsContainerState();
}

class __EventsContainerState extends State<_EventsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: context.circularBorderRadius(radius: 12),
        image: DecorationImage(
          colorFilter: ColorFilter.srgbToLinearGamma(),
          image: _backgroundUniversityImage(),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          context.spacerWithFlex(flex: 2),
          Expanded(
            child: Text(
              widget.universityName,
              style: context.bodyMedium?.copyWith(
                fontWeight: context.fontWeightBold,
                color: AppColors.white,
              ),
            ),
          ),
          context.spacerWithFlex(flex: 2),
        ],
      ),
    );
  }

  AssetImage _backgroundUniversityImage() {
    return AssetImage(
      widget.universityAssetPath,
    );
  }
}
