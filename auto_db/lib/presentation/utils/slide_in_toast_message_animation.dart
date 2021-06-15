// import 'package:flutter/material.dart';
// import 'package:sa_v1_migration/sa_v1_migration.dart';
// import 'package:simple_animations/simple_animations.dart';

// class SlideInToastMessageAnimation extends StatelessWidget {
//   final Widget child;

//   SlideInToastMessageAnimation(this.child);

//   @override
//   Widget build(BuildContext context) {
//     // final tween = MultiTrackTween([
//     //   Track("translateY")
//     //       .add(
//     //         Duration(milliseconds: 250),
//     //         Tween(begin: -100.0, end: 0.0),
//     //         curve: Curves.easeOut,
//     //       )
//     //       .add(Duration(seconds: 1, milliseconds: 250),
//     //           Tween(begin: 0.0, end: 0.0))
//     //       .add(Duration(milliseconds: 250),
//     //           Tween(begin: 0.0, end: -100.0),
//     //           curve: Curves.easeIn),
//     //   Track("opacity")
//     //       .add(Duration(milliseconds: 500),
//     //           Tween(begin: 0.0, end: 1.0))
//     //       .add(Duration(seconds: 1),
//     //           Tween(begin: 1.0, end: 1.0))
//     //       .add(Duration(milliseconds: 500),
//     //           Tween(begin: 1.0, end: 0.0)),
//     // ]);
    
//     final tween = MultiTween<DefaultAnimationProperties>()
//       ..add(DefaultAnimationProperties.height, Tween(begin: -100.0, end: 0.0), Duration(milliseconds: 250), Curves.easeOut)
//       ..add(DefaultAnimationProperties.height, Tween(begin: 0.0, end: 0.0), Duration(seconds: 1, milliseconds: 250))
//       ..add(DefaultAnimationProperties.height, Tween(begin: 0.0, end: -100.0), Duration(milliseconds: 250), Curves.easeIn);

//     return CustomAnimation<double>(
//       control: control, // <-- bind state variable to parameter
//       tween: (-100.0).tweenTo(100.0),
//       builder: (context, child, value) {
//         return Transform.translate( // <-- animation that moves childs from left to right
//           offset: Offset(value, 0),
//           child: child,
//         );
//       },
//       child: MaterialButton( // <-- there is a button
//         color: Colors.yellow,
//         child: Text("Swap"),
//         onPressed: toggleDirection, // <-- clicking button changes animation direction
//       ),
//     );

//     return ControlledAnimation(
//       duration: tween.duration,
//       tween: tween,
//       child: child,
//       builderWithChild: (context, child, animation) => Opacity(
//         opacity: animation["opacity"],
//         child: Transform.translate(
//             offset: Offset(0, animation["translateY"]),
//                     child: child),
//       ),
//     );
//   }
// }