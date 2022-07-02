part of 'pages.dart';

class TestingPage extends StatefulWidget {
  @override
  _TestingPageState createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference igpost = firestore.collection('igpost');
    return Scaffold(
      body: Stack(children: [
        FutureBuilder(
            future: igpost.get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  // child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: snapshot.data.docs.length,
                  //     itemBuilder: (context, i) {
                  //       return IgpostCard(
                  //           snapshot.data.docs[i].data()['igTitle'],
                  //           snapshot.data.docs[i].data()['imageIgURL'],
                  //           snapshot.data.docs[i].data()['desc']);
                  //     }),
                );
              }
              if (snapshot.hasError) {
                return Text('Error');
              } else {
                return Text('Loading');
              }
            }),
      ])
      // body: StreamBuilder(
      //     stream: FirebaseFirestore.instance.collection('igpost').snapshots(),
      //     builder: (_, snapshot) {
      //       if (!snapshot.hasData) return const SizedBox.shrink();
      //       return ListView.builder(
      //           itemCount: snapshot.data.docs.length,
      //           itemBuilder: (_, index) {
      //             // final docData = snapshot.data.docs[index].data();
      //             // final dateTime = (docData['timestamp'] as Timestamp).toDate();
      //             return ListTile(
      //               title: Text(
      //                   snapshot.data.docs[index].data()['titleIg'].toString()),
      //             );
      //           });
      //     }),
      ,
    );
  }
}
