part of 'pages.dart';

class InstagramPage extends StatefulWidget {
  @override
  _InstagramPageState createState() => _InstagramPageState();
}

class _InstagramPageState extends State<InstagramPage> {
  bool shouldPop = true;
  CollectionReference igpost = FirebaseFirestore.instance.collection('igpost');
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return shouldPop;
        },
        child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo_himastamobile.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: defaultMargin),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          return;
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/logo_himastamobile.png',
                            height: 200,
                            width: 200,
                          )),
                      Text("Instagramkan Dirimu \nDalam Event Kami !",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center),
                      SizedBox(height: 30)
                    ],
                  ),
                  FutureBuilder(
                      future: igpost.get(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: ListView.builder(
                                reverse: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data.docs.length,
                                itemBuilder: (context, i) {
                                  return InstagramList(
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['titleIg'],
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['imageIgURL'],
                                  );
                                }),
                          );
                        }
                        if (snapshot.hasError) {
                          return Text('Error');
                        } else {
                          return Text('Loading');
                        }
                      }),
                ],
              )),
        ));
  }
}

class InstagramList extends StatelessWidget {
  final String titleIg;
  final String imageIgURL;

  final Function onTap;

  InstagramList(this.titleIg, this.imageIgURL, {this.onTap});

  // void customLaunch(command) async {
  //   if (await canLaunch(command)) {
  //     await launch(command);
  //   } else {
  //     print(' could not launch $command');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Container(
          padding: EdgeInsets.only(top: 7.0, left: 10.0, right: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            margin: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  // ignore: dead_code
                  image: true
                      ? NetworkImage('$imageIgURL')
                      // ignore: dead_code
                      : AssetImage('assets/logo_himastamobile.png')
                          as ImageProvider,
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: blueColor.withOpacity(0.2),
                    spreadRadius: 1.0,
                    blurRadius: 2.0)
              ],
            ),
          ),
        ));
  }
}
