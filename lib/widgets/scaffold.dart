import 'package:flutter/material.dart';
import 'package:todolist/bloc/startup_bloc.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool showDrawer;
  AppScaffold({this.appBar, this.body, this.showDrawer = false});

  @override
  Widget build(final BuildContext context) {
    final bloc = StartupBloc.of(context);
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.black.withOpacity(0),
      body: body,
    );
  }
}

// class DialogBox extends StatelessWidget {
//   const DialogBox({
//     super.key,
//     this.bloc,
//     this.title,
//     this.onTap,
//   });
//   final String? title;
//   final StartupBloc? bloc;
//   final GestureTapCallback? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       backgroundColor: const Color(0xff1D242B),
//       child: Container(
//         padding: EdgeInsets.all(16.0),
//         height: 150.0,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(title ?? context.appLocalizations.logout_message,
//                 style: Theme.of(context).textTheme.bodyLarge),
//             SizedBox(height: 24.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Container(
//                       height: 5.h,
//                       width: 10.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.h),
//                         gradient: LinearGradient(
//                             begin: const Alignment(-0.24, 0),
//                             end: const Alignment(1.27, 1),
//                             colors: [
//                               LightCodeColors.purpleA400,
//                               const Color(0XFF0077C0)
//                             ]),
//                       ),
//                       child: Center(
//                         child: Text(context.appLocalizations.no,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .titleSmall!
//                                 .copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w700,
//                                 )),
//                       )),
//                 ),
//                 SizedBox(width: 8.0),
//                 GestureDetector(
//                   onTap: onTap ??
//                       () {
//                         Navigator.pop(context);
//                         bloc!.updateIndex(0);
//                         singletonBloc.profileBloc.updateProfile(null);
//                       },
//                   child: Container(
//                       height: 5.h,
//                       width: 10.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.h),
//                         gradient: LinearGradient(
//                             begin: const Alignment(-0.24, 0),
//                             end: const Alignment(1.27, 1),
//                             colors: [
//                               LightCodeColors.purpleA400,
//                               const Color(0XFF0077C0)
//                             ]),
//                       ),
//                       child: Center(
//                         child: Text(context.appLocalizations.yes,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .titleSmall!
//                                 .copyWith(
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w700,
//                                 )),
//                       )),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
