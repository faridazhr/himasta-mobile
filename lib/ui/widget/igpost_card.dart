part of 'widgets.dart';

class IgpostCard extends StatelessWidget {
  final String titleIg;
  final String imageIgURL;

  final Function onTap;

  IgpostCard(this.titleIg, this.imageIgURL, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            // Image.network('$imageIgURL'),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.33,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      // ignore: dead_code
                      image: true
                          ? NetworkImage('$imageIgURL')
                          // ignore: dead_code
                          : AssetImage('assets/logo_himastamobile.png')
                              as ImageProvider,
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              width: MediaQuery.of(context).size.width * 0.31,
              child: Text(titleIg,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'VisbyRoundCF',
                      fontSize: 10,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
