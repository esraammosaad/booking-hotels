import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../authentication/presentation/manager/auth_cubit/auth_cubit.dart';
class CustomLogOutContainer extends StatelessWidget {
  const CustomLogOutContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is AuthSuccess){
          context.push(
            AppRoutes.kSignInView,
          );
        }
        // TODO: implement listener
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black.withOpacity(0.05),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () async {
                BlocProvider.of<AuthCubit>(context).logOutUser();


              },
              child: Text(
                "Log out",
                style: Styles.textStyle20.copyWith(
                  color: const Color(0xffFF3D00),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}