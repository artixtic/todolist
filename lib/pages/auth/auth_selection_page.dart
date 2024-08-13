import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todolist/core/colors.dart';
import 'package:todolist/extensions/context.dart';
import 'package:todolist/pages/auth/login/login_page.dart';

class AuthSelectionPage extends StatelessWidget {
  const AuthSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Center(
                //   child: Container(
                //     width: Adaptive.w(40),
                //     height: Adaptive.h(20),
                //     decoration: const BoxDecoration(
                //         image: DecorationImage(
                //             image: AssetImage(DefaultImages.LOGO),
                //             fit: BoxFit.fill)),
                //   ),
                // ),
                Text(
                  "Lyrics App",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  "Best lyrics generating player",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              LoginPage.push(context);
            },
            child: Container(
              height: 5.h,
              width: 20.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.h),
                gradient: LinearGradient(
                    begin: const Alignment(-0.24, 0),
                    end: const Alignment(1.27, 1),
                    colors: [
                      LightCodeColors.purpleA400,
                      const Color(0XFF0077C0)
                    ]),
              ),
              child: Center(
                  child: Text(
                context.appLocalizations.login_btnDone,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
              )),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text("OR",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                  )),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 4.h,
          ),
        ]));
  }
}
