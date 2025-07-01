import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_cubit.dart';
import 'package:flutter_advance/feature/login_screen/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is loginLoading || current is LoginSuccess || current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            return showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen , arguments:loginResponse.userData?.userName);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.mainColor,
                content: Text('Welcome ${loginResponse.userData?.userName ?? ''}'),
              ),
            );
          },
          loginError: (message) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message.getAllErrorsMessage()),
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
    
  }


  
}
