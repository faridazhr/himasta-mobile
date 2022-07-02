part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference igpost = firestore.collection('igpost');
    CollectionReference hipod = firestore.collection('hipod');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MainAppBar(),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: blackColor),
        ),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[greenColor, blueColor]),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 1,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                // note : Main Widgets
                Center(
                  child: Container(
                    height: 250,
                    width:
                        MediaQuery.of(context).size.width - 2 * defaultMargin,
                    child: Material(
                      color: blackColor,
                      elevation: 5,
                      borderRadius: BorderRadius.circular(22),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_paus.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'PAuS Unpad',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewPage(
                                                link:
                                                    'https://students.unpad.ac.id/pacis/mhs_home',
                                              )),
                                    );
                                  },
                                ),
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_liveunpad.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'LiVE Unpad',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewPage(
                                                link:
                                                    'https://reguler.live.unpad.ac.id/',
                                              )),
                                    );
                                  },
                                ),
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_wifi.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'Pintas Unpad',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewPage(
                                                link:
                                                    'https://pintu.unpad.ac.id/#/',
                                              )),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_odong.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'Odong Unpad',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewPage(
                                                link:
                                                    'https://siat.unpad.ac.id/sarpras/angkutankampus/',
                                              )),
                                    );
                                  },
                                ),
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_feedback3.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'Kotak Saran',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebViewPage(
                                                link:
                                                    'https://docs.google.com/forms/d/e/1FAIpQLScVAsU6hkXleSuhf7qlIe3yv-4aExf8X_00hmdacn_1_Lgf0w/viewform',
                                              )),
                                    );
                                  },
                                ),
                                IconBox(
                                  image: Image.asset(
                                    'assets/ic_web.png',
                                    fit: BoxFit.contain,
                                    height: 60,
                                  ),
                                  text: 'Web Himasta',
                                  onTap: () {
                                    customLaunch(
                                        'http://himasta.fmipa.unpad.ac.id/');
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "What's New on Our Instagram",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'VisbyRoundCF',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 0.8,
                  indent: 10,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                // note : Igpost Card
                FutureBuilder(
                    future: igpost.get(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data.docs.length,
                                itemBuilder: (context, i) {
                                  return IgpostCard(
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['titleIg'],
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['imageIgURL'],
                                    onTap: () {
                                      customLaunch(snapshot
                                          .data
                                          .docs[
                                              snapshot.data.docs.length - i - 1]
                                          .data()['linkIg']);
                                    },
                                  );
                                }),
                          ),
                        );
                      }
                      if (snapshot.hasError) {
                        return Text('Error');
                      } else {
                        return SpinKitRing(size: 50, color: blackColor);
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Check Out Our Podcast !",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'VisbyRoundCF',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 0.8,
                  indent: 10,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                // note : Hipod Post
                FutureBuilder(
                    future: hipod.get(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data.docs.length,
                                itemBuilder: (context, i) {
                                  return IgpostCard(
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['titleHipod'],
                                    snapshot.data
                                        .docs[snapshot.data.docs.length - i - 1]
                                        .data()['imageHipodURL'],
                                    onTap: () {
                                      customLaunch(snapshot
                                          .data
                                          .docs[
                                              snapshot.data.docs.length - i - 1]
                                          .data()['linkHipod']);
                                    },
                                  );
                                }),
                          ),
                        );
                      }
                      if (snapshot.hasError) {
                        return Text('Error');
                      } else {
                        return SpinKitRing(size: 50, color: blackColor);
                      }
                    }),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 0.1,
                  indent: 5,
                  endIndent: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(
                      "Ⓒ 2021 | Departemen Media dan Infromasi",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontFamily: 'VisbyRoundCF',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "BE Himasta Kabinet Harmoni Karya",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontFamily: 'VisbyRoundCF',
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
