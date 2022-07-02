part of 'widgets.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/ic_drawer.png",
                height: 15,
                width: 34,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          SizedBox(width: 30),
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
