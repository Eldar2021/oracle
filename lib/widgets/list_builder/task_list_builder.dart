import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/generated/assets.dart';

class TaskListBuilder extends StatelessWidget {
  const TaskListBuilder({
    required this.battleTaskList,
    Key? key,
  }) : super(key: key);

  final List<Battle> battleTaskList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: battleTaskList.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        Battle battleTask = battleTaskList[index];
        return InkWell(
          onTap: () async {
            Navigator.pushReplacementNamed(context, Routes.BATTLE_DETAIL,
                arguments: [battleTask]);
          },
          child: Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(battleTask.getGameIcon),
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  flex: 5,
                  child: Text(battleTask.title),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(battleTask.rate.toString()),
                      SvgPicture.asset(Assets.componentsCoin)
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
