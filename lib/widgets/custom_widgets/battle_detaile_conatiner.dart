import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/generated/assets.dart';
//
// class BattleDetailContainer extends StatelessWidget {
//   const BattleDetailContainer({
//     Key? key,
//     required this.battle,
//   }) : super(key: key);
//
//   final Battle battle;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Image.asset(
//             Assets.dota2,
//             height: 180.0,
//             width: double.infinity,
//           ),
//           Text(battle.title),
//           Row(children: [
//             Text(battle.startDate),
//             SizedBox(width: 40),
//             Text(battle.category?? ""),
//             SizedBox(width: 20),
//           ]),
//           //Drawer(),
//           SizedBox(height: 20),
//           Text(battle.description ?? ""),
//           SizedBox(width: 30),
//           Text(battle.startDate),
//           Text(battle.rate?? ""),
//           Text(battle.title),
//           //Drawer(),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Row(
//                   children: [
//                     SvgPicture.asset(Assets.componentsEyes),
//                     const SizedBox(width: 8.0),
//                     Text(
//                       "${battle.getViewsCount?? 0} просмотров",
//                       style: Get.textTheme.caption!.copyWith(
//                         color: MyColors.viewsTextColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   children: [
//                     SvgPicture.asset(Assets.componentsArrayShare),
//                     const SizedBox(width: 8.0),
//                     Text(
//                       "${battle.getRepostsCount?? 0} предложений",
//                       style: Get.textTheme.caption!.copyWith(
//                         color: MyColors.viewsTextColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
