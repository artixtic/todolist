import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import '../../../extensions/context.dart';
import '../../../widgets/text_fields/email_text_form_field.dart';
import '../../../widgets/text_fields/password_text_form_field.dart';
import 'bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onSubmit;

  const LoginForm({
    required this.onSubmit,
  });

  @override
  Widget build(final BuildContext context) {
    final bloc = LoginBloc.of(context);
    return AutofillGroup(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EmailTextFormField(
            hintText: context.appLocalizations.login_email,
            textInputAction: TextInputAction.next,
            onChanged: bloc.updateEmail,
            validator: Validators.compose([
              Validators.required(context.appLocalizations.login_errEmailReq),
              Validators.email(context.appLocalizations.login_errEmailInvalid),
            ]),
          ),
          const SizedBox(height: 10),
          LoginBlocSelector(
            selector: (final state) => state.loginApi.error,
            builder: (final error) => PasswordTextFormField(
              hintText: context.appLocalizations.login_password,
              errorText: error?.msg,
              onChanged: bloc.updatePassword,
              validator: Validators.required(
                context.appLocalizations.login_errPasswordReq,
              ),
              onFieldSubmitted: (final _) => onSubmit(),
            ),
          ),
        ],
      ),
    );
  }
}
