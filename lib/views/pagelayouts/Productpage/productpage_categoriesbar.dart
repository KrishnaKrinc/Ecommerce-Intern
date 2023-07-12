// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecom/styles/styles.dart';
import 'package:ecom/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductpageCategoriesBar extends StatefulWidget {
  const ProductpageCategoriesBar({super.key});

  @override
  State<ProductpageCategoriesBar> createState() =>
      _ProductpageCategoriesBarState();
}

class _ProductpageCategoriesBarState extends State<ProductpageCategoriesBar> {
  final Map<String, bool> menu = {
    "Electronics": false,
    "TVs & Appliances": false,
    "Men": false,
    "Women": false,
    "Baby & Kids": false,
    "Home & Furniture": false,
    "Sports, Books & More": false,
    "Flights": false,
    "Offer Zone": false,
  };

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: 30,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverableMenuItem(
                label: "Electronics",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "TVs & Appliances",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Men",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Women",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Baby & Kids",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Sports, Books & More",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Flights",
                submenu: SubMenu(),
              ),
              HoverableMenuItem(
                label: "Offer Zone",
                submenu: SubMenu(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget SubMenu() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

class HoverableMenuItem extends StatefulWidget {
  final String label;
  final Widget submenu;

  const HoverableMenuItem({required this.label, required this.submenu});

  @override
  _HoverableMenuItemState createState() => _HoverableMenuItemState();
}

class _HoverableMenuItemState extends State<HoverableMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.label,
                    style: Styles.headerStyleLight2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: ThemeColors.grey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Visibility(
                  visible: isHovered,
                  child: SingleChildScrollView(
                    child: widget.submenu,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// class menuItem extends StatelessWidget {
//   const menuItem({
//     super.key,
//     required this.menuText,
//     required this.menuShown,
//     required this.onHover,
//   });
//   final String menuText;
//   final bool menuShown;
//   final Function onHover;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           menuText,
//           style: Styles.headerStyleLight2,
//         ),
//         TextButton(
//           onPressed: () {
//             onHover;
//             print("asd");
//           },
//           onHover: (v) {
//             onHover;
//           },
//           child: Icon(Icons.arrow_drop_down_rounded, color: ThemeColors.grey),
//         ),
//       ],
//     );
//   }
// }
//       // children: menu.keys
//       //     .map(
//       //       (e) => menuItem(
//       //           menuText: e,
//       //           menuShown: menu[e]!,
//       //           onHover: () {
//       //             setState(() {
//       //               menu[e] = !menu[e]!;
//       //               _visibleElec = menu[e]!;
//       //             });
//       //           }),
//       //     )
//       //     .toList(),
//     ),