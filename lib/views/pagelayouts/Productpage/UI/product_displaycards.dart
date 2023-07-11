import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDisplayCards extends StatelessWidget {
  const ProductDisplayCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: const ProductCardPageViewBuilder(),
    );
  }
}

class ProductCardPageViewBuilder extends StatefulWidget {
  const ProductCardPageViewBuilder({super.key});

  @override
  State<ProductCardPageViewBuilder> createState() =>
      _ProductCardPageViewBuilderState();
}

class _ProductCardPageViewBuilderState
    extends State<ProductCardPageViewBuilder> {
  final int maxCardsPerPage = 20;
  final int totalCards = 100;

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int totalPages = (totalCards / maxCardsPerPage).ceil();
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
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
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                childAspectRatio: 0.2 / 0.3,
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
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(totalPages, (index) {
              return GestureDetector(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? ThemeColors.blue
                        : ThemeColors.transparent,
                  ),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: _currentPage == index
                          ? ThemeColors.white
                          : ThemeColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class ProductCardUI extends StatelessWidget {
  final int index;
  final int startIndex;

  const ProductCardUI({
    super.key,
    required this.startIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('Product ${startIndex + index + 1}'),
      ),
    );
  }
}
