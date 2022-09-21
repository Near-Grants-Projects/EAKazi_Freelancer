import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/popups/error_popup.dart';
import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:ea_kazi/src/features/authentication/presentation/sign_up/widgets/sign_up_screen_body.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocListener<SignUpBloc, SignUpState>(
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
          resizeToAvoidBottomInset: false,
          body: SignUpScreenBody(),
        ),
      ),
    );
  }
}
