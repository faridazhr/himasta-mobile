part of 'widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff22232A),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () async {
                    print("Statday Button Pressd");

                    final StatdayBox action =
                        await _asyncStatdayDialog(context);
                    print("Confirm Action $action");
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
                                  image: AssetImage("assets/ic_statday.png"))),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Statday',
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
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () async {
                    print("Stozu Button Pressd");
                    final StozuBox action = await _asyncStozuDialog(context);
                    print("Confirm Action $action");
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
                                  image: AssetImage("assets/ic_stozu.png"))),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Stozu',
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
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    print("Kontak button Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KontakPage()),
                    );
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
                                  image: AssetImage("assets/ic_kontak.png"))),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Kontak',
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
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    print("Info button Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
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
                              image: AssetImage("assets/ic_info.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Info',
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
                SizedBox(
                  height: 45,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff22232A),
                    ),
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: GradientText(
                        'Himasta Mobile v1.0',
                        gradient: LinearGradient(
                            colors: <Color>[greenColor, blueColor]),
                        style: TextStyle(
                          fontFamily: 'VisbyRoundCF',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
