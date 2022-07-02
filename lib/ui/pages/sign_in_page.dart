part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
// Text Field State
  String email = '';
  String password = '';
  String error = '';

  String _email = 'behimasta';
  String _password = '123456';

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: GradientText(
          'Login for Administator',
          gradient: LinearGradient(colors: <Color>[greenColor, blueColor]),
          style: TextStyle(
              fontFamily: 'VisbyRoundCF',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (val) => val.isEmpty
                      ? "Masukan ID"
                      : val != _email
                          ? 'ID Salah'
                          : null,
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 25,
                    ),
                    labelText: "ID",
                    labelStyle:
                        TextStyle(fontSize: 15, fontFamily: 'Felbridge'),
                    hintText: "Masukan Administrator ID",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (val) => val.isEmpty
                      ? "Masukan Kata Sandi"
                      : val != _password
                          ? 'Kata Sandi Salah'
                          : null,
                  onChanged: (val) {
                    password = val;
                  },
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 25,
                    ),
                    labelText: "Kata Sandi",
                    labelStyle:
                        TextStyle(fontSize: 15, fontFamily: 'Felbridge'),
                    hintText: "Masukkan Kata Sandi Administrator",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        print('visibility button pressed');
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(_showPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    color: greenColor,
                    child: Text('Sign In'),
                    onPressed: () {
                      if (email == _email && password == _password) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdminPage()),
                        );
                      } else if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                        setState(() => error = 'ada yang salah');
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                GradientText(
                  'ID atau Password Salah',
                  gradient:
                      LinearGradient(colors: <Color>[greenColor, blueColor]),
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
