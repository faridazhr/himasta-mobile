part of "widgets.dart";

class IconBox extends StatelessWidget {
  final Image image;
  final String text;
  final Function onTap;

  IconBox({this.image, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            image,
            Container(
              padding: const EdgeInsets.all(8.0),
              child: GradientText(
                text,
                gradient:
                    LinearGradient(colors: <Color>[greenColor, blueColor]),
                style: TextStyle(
                    fontFamily: 'VisbyRoundCF',
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
