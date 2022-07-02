part of 'widgets.dart';

enum StozuBox { Cancel }
Future<StozuBox> _asyncStozuDialog(BuildContext context) async {
  return showDialog<StozuBox>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: blackColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: GradientText(
          'Stozu',
          gradient: LinearGradient(colors: <Color>[greenColor, blueColor]),
          style: TextStyle(
            fontFamily: 'VisbyRoundCF',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        content: Container(
          height: 200,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  _launchURLIgStozu();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/ic_instagram.png"))),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '@stozu.id',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Kembali',
            ),
            onPressed: () {
              Navigator.of(context).pop(StozuBox.Cancel);
            },
          ),
        ],
      );
    },
  );
}

_launchURLIgStozu() async {
  const url = 'https://www.instagram.com/stozu.id/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
