part of 'pages.dart';

class WebViewPage extends StatefulWidget {
  final String link;

  WebViewPage({this.link});
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: WebViewAppBar(),
          flexibleSpace: Container(
            decoration: BoxDecoration(color: blackColor),
          ),
        ),
        body: Stack(children: <Widget>[
          SpinKitCircle(size: 50, color: Colors.black),
          Container(child: _buildWeb(widget.link))
        ]));
  }
}

class WebViewAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/ic_back.png",
                height: 30,
                width: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(width: 25),
          Image.asset(
            'assets/logo_himasta.png',
            fit: BoxFit.contain,
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: GradientText(
              'HIMASTA MOBILE',
              gradient: LinearGradient(colors: <Color>[greenColor, blueColor]),
              style: TextStyle(
                  fontFamily: 'VisbyRoundCF',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildWeb(String linkWeb) {
  return Container(
      child: WebView(
          initialUrl: linkWeb, javascriptMode: JavascriptMode.unrestricted));
}
