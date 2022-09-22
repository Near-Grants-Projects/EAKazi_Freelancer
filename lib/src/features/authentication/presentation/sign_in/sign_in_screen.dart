import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/popups/error_popup.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_components/sigin_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          state.whenOrNull(loadingState: () {
            showDialog(
              context: context,
              builder: (context) {
                return Container(
                  color: Colors.white.withOpacity(0.5),
                  child: const Center(
                    child: SizedBox(
                      height: Sizes.p24,
                      width: Sizes.p24,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
            );
          }, successState: () {
            context.router.pushAndPopUntil(
              const DefaultWrapperRoute(),
              predicate: (predicate) => false,
            );
          }, errorState: (message, date) {
            Navigator.of(context).pop(true);

            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => ErrorPopup(title: message));
          });
        },
        child: const Scaffold(
          body: SignInScreenBody(),
        ),
      ),
    );
  }
}
