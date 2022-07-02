part of 'pages.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool shouldPop = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return shouldPop;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xff22232A),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: const Color(0xffF1F1F1),
                        ),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                          return;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Image.asset(
                  "assets/logo_himastamobile.png",
                  height: 150,
                  width: 150,
                ),
                SizedBox(height: 30),
                Image.asset(
                  "assets/ic_himastamobile1.png",
                  width: 250,
                ),
                SizedBox(height: 50),
                Container(
                  child: Center(
                      child: Text(
                    "Dikelola oleh:\nDepartemen Media Informasi\nBE Himasta FMIPA Unpad 2021\nKabinet Harmoni Karya",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
