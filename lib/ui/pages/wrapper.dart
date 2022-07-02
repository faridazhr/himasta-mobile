part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnMainPage)
            ? MainPage()
            : (pageState is OnInfoPage)
                ? InfoPage()
                : (pageState is OnKontakPage)
                    ? KontakPage()
                    : (pageState is OnWebviewPage)
                        ? WebViewPage(
                            link: '',
                          )
                        : MainPage());
  }
}

// class Wrapper extends StatelessWidget {
//   final AuthServices _auth = AuthServices();
//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<Users>(context);
//     print(user);
//     if (user == user) {
//       return AdminPage();
//     } else {
//       return BlocBuilder<PageBloc, PageState>(
// builder: (_, pageState) => (pageState is OnMainPage)
//     ? MainPage()
//     : (pageState is OnInfoPage)
//         ? InfoPage()
//         : (pageState is OnKontakPage)
//             ? KontakPage()
//             : (pageState is OnWebViewPage)
//                 ? WebViewPage()
//                 : (pageState is OnRegisterPage)
//                     ? Register()
//                     : (pageState is OnAdminPage)
//                         ? AdminPage()
//                         : Container());
//     }
//   }
// }
