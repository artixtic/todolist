import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todolist/core/colors.dart';

import '../../../extensions/context.dart';
import '../../../widgets/list_view.dart';
import '../../../widgets/loading_text.dart';
import '../../../widgets/scaffold.dart';
import '../../../widgets/text_fields/form.dart';
import 'bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return LoginBlocSelector(
      selector: (final state) => state.loginApi.isApiInProgress,
      builder: (final disableForm) => AppForm(
        disable: disableForm,
        child: AppScaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0),
            title: Text(context.appLocalizations.login_title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: LightCodeColors.whiteA700)),
            centerTitle: true,
          ),
          body: NoGlowListViewWrapper(
            child: Builder(
                builder: (final context) => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            // LoginForm(
                            //   onSubmit: () => _onSubmit(context),
                            // ),
                            // const SizedBox(height: 20),
                            // const SizedBox(height: 40),
                            _BottomButtons(
                              onSubmit: () => _onSubmit(context),
                            ),
                            const SizedBox(height: 90),
                          ],
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }

  void _onSubmit(final BuildContext context) {
    // if (!Form.of(context).validate()) {
    //   return;
    // }
    LoginBloc.of(context).callLogin();
  }
}

class _BottomButtons extends StatelessWidget {
  final VoidCallback onSubmit;

  const _BottomButtons({
    required this.onSubmit,
  });

  @override
  Widget build(final BuildContext context) {
    return LoginBlocSelector(
      selector: (final state) => state.loginApi.isApiInProgress,
      builder: (final isLoginApiInProgress) => ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                minimumSize: const MaterialStatePropertyAll(
                  Size(200, 45),
                ),
              ),
        ),
        child: GestureDetector(
          onTap: isLoginApiInProgress ? null : onSubmit,
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
              child: LoadingText(
                isLoading: isLoginApiInProgress,
                label: context.appLocalizations.login_btnDone,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
