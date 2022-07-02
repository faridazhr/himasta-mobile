part of 'services.dart';

class IgpostServices {
  static CollectionReference igpostCollection =
      FirebaseFirestore.instance.collection('igpost');

  static Future<List<Igpost>> getIgpost() async {
    QuerySnapshot snapshot = await igpostCollection.get();
    var documents = snapshot.docs;

    List<Igpost> igpost = [];
    for (var docs in documents) {
      igpost.add(
        Igpost(
            imageIgURL: docs['imageIgURL'],
            desc: docs['desc'],
            titleIg: docs['titleIg'],
            linkIg1: docs['linkIg1'],
            linkIg2: docs['linkIg2'],
            footer: docs['footer']),
      );
    }
    return igpost;
  }
}
