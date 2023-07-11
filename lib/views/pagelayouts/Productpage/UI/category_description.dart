import 'package:ecom/styles/styles.dart';
import 'package:flutter/material.dart';

class CategoryDescription extends StatefulWidget {
  const CategoryDescription({Key? key}) : super(key: key);

  @override
  _CategoryDescriptionState createState() => _CategoryDescriptionState();
}

class _CategoryDescriptionState extends State<CategoryDescription> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    const textSpan = TextSpan(
      text:
          'A printer is an important electronic device and a vital component of a computer. For the uninitiated, a printing machine is equipment that transfers information available in text and image form to paper. It converts the soft copy of a document to a hard copy. It is an external device that is connected to the computer to get the required printouts. You can print anything and everything through it, be it an image, text, charts, graphs, or other data. With the advancement in technology, the device has evolved over time. Depending on the technologies, these are of different types, including Inkjet, Laser, Ink Tank, etc. If you are searching for a printer online, there is a huge variety available to choose from. Complete your assignments in no time with the help of printouts, or finish off your kid’s school project with fabulous and life-like images printed on it. Check brands such as HP, Epson, Canon, Brother, Xerox, and more. It is portable and suitable for both the office and the home. All these devices come in a wide range of colours, shapes, and sizes and have a dynamic appeal. Just apply the various filters like refilling type, functions, interface, and others before you buy the best printer for yourself from the comfort of your home.',
      style: Styles.descriptionStyle,
    );
    final textWidget = RichText(
      maxLines: isExpanded ? 8 : 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
      text: textSpan,
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: textWidget,
    );
  }
}
