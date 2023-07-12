import 'package:ecom/views/pagelayouts/Productpage/UI/page_indicator.dart';
import 'package:ecom/views/pagelayouts/Productpage/UI/productcard_ui.dart';
import 'package:flutter/material.dart';

class ProductCardPageViewBuilder extends StatefulWidget {
  const ProductCardPageViewBuilder({super.key, required this.crossAxisCount});
  final int crossAxisCount;

  @override
  State<ProductCardPageViewBuilder> createState() =>
      _ProductCardPageViewBuilderState();
}

class _ProductCardPageViewBuilderState
    extends State<ProductCardPageViewBuilder> {
  final int maxCardsPerPage = 20;
  final int totalCards = 100;
  int previousPageIndex = 0;
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int maxCardsPerPage = 20;
    const int totalCards = 110;
    // final int totalPages = (totalCards / maxCardsPerPage).ceil();
    final int totalPages = 10;
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            physics:
                const NeverScrollableScrollPhysics(), // Disable swipe to change pages
            itemCount: totalPages,
            itemBuilder: (BuildContext context, int pageIndex) {
              final startIndex = pageIndex * maxCardsPerPage;
              final endIndex = startIndex + maxCardsPerPage;
              final pageCards = List.generate(
                endIndex < totalCards
                    ? maxCardsPerPage
                    : totalCards - startIndex,
                (index) => ProductCardUI(
                  startIndex: startIndex,
                  index: index,
                ),
              );

              return GridView.count(
                crossAxisCount: widget.crossAxisCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1 / 1.25, // 1/1.25
                children: pageCards,
              );
            },
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  final pageIndex = previousPageIndex + index;
                  return GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        pageIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: PageIndicator(
                        index: pageIndex, currentPage: _currentPage),
                  );
                }),
              ),
            ),
            Text("...."),
            IconButton(
              onPressed: () {
                setState(() {
                  previousPageIndex = previousPageIndex + 1;
                });
              },
              icon: Icon(Icons.arrow_circle_right_outlined),
            )
          ],
        ),

        // Container(
        //   padding: const EdgeInsets.symmetric(vertical: 10),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: List.generate(totalPages, (index) {
        //       return GestureDetector(
        //         onTap: () {
        //           _pageController.animateToPage(
        //             index,
        //             duration: const Duration(milliseconds: 500),
        //             curve: Curves.easeInOut,
        //           );
        //         },
        //         child: PageIndicator(index: index, currentPage: _currentPage),
        //       );
        //     }),
        //   ),
        // ),
      ],
    );
  }
}
