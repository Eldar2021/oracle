import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/constants/color_constants.dart';
import '../command_user_card_create.dart';

class PreviewPlayers extends StatelessWidget {
  const PreviewPlayers({
    required this.capitan,
    required this.players,
    required this.text,
    Key? key,
  }) : super(key: key);
  final UserModel capitan;
  final List<UserModel> players;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: Text(
        text,
        style: Get.textTheme.subtitle1!.copyWith(height: 2),
      ),
      collapsed: Container(),
      expanded: Column(
        children: [
          CommandUserCreateCard(user: capitan, isCapitan: true),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: players.length,
            itemBuilder: (context, index) {
              UserModel player = players[index];
              return CommandUserCreateCard(user: player, isPreview: true);
            },
          ),
        ],
      ),
      theme: ExpandableThemeData(
        iconColor: MyColors.whiteColor,
        hasIcon: true,
        tapBodyToCollapse: true,
      ),
    );
  }
}
