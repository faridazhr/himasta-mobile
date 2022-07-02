import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himasta_mobile/bloc/blocs.dart';
import 'package:himasta_mobile/bloc/igpost_bloc.dart';
import 'package:himasta_mobile/bloc/theme_bloc.dart';
import 'package:himasta_mobile/models/models.dart';
import 'package:himasta_mobile/ui/pages/pages.dart';
import 'package:provider/provider.dart';
import 'package:himasta_mobile/services/services.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => PageBloc(initialState: null)),
      BlocProvider(create: (_) => ThemeBloc(initialState: null)),
      BlocProvider(create: (_) => IgpostBloc(initialState: null))
    ], child: Wrapper()
        // BlocBuilder<ThemeBloc, ThemeState>(
        //     builder: (_, themeState) => MaterialApp(
        //         theme: themeState.themeData,
        //         debugShowCheckedModeBanner: false,
        //         home: Wrapper())),
        );
  }
}

//     StreamProvider<Users>.value(
//       value: AuthServices().user,
//       initialData: null,
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(create: (_) => PageBloc()),
//           BlocProvider(create: (_) => UserBloc()),
//         ],
//         child: Wrapper(),
//       ),
//     );
//   }
// }
