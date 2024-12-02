import 'package:api_repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialinnovation/counter/counter.dart';
import 'package:socialinnovation/l10n/arb/app_localizations.dart';
import 'package:socialinnovation/todos/cubit/todos_cubit.dart';
import 'package:socialinnovation/todos/view/todos_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosCubit(
            api_repository: ApiRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const TodosView(),
      ),
    );
  }
}
