part of '../library_view.dart';

abstract class _LibraryViewLoadingBase extends StatelessWidget {
  int get crossAxisCount;
  double get gridViewChildAspectRatio;
  int get placeholderItemsCount;
  double get placeholderImageAspectRatio;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kSpacingXSmall,
        mainAxisSpacing: kSpacingXSmall,
        childAspectRatio: gridViewChildAspectRatio,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: placeholderItemsCount,
        (context, index) {
          return LayoutBuilder(builder: (context, constraints) {
            final width = constraints.maxWidth;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: AspectRatio(
                        aspectRatio: placeholderImageAspectRatio,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kSpacingXSmall,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                      width: width * 0.8,
                      height: kSpacingSmall,
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                      width: width * 0.6,
                      height: kSpacingSmall,
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                      width: width * 0.3,
                      height: kSpacingSmall,
                    ),
                  ),
                ],
              ),
            );
          });
        },
      ),
    );
  }
}
