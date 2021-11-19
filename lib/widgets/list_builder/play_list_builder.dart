import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/play_model/play_models.dart';
import 'package:oracle/app/modules/home/widgets/name_battle_row.dart';
import 'package:oracle/app/routes/app_pages.dart';

class PlayListBuilder extends StatelessWidget {
  const PlayListBuilder({
    required this.playList,
    Key? key,
  }) : super(key: key);

  final List<Play> playList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: playList.length,
      itemBuilder: (context, index) {
        Play play = playList[index];
        return InkWell(
          onTap: () {
            Get.toNamed(Routes.PLAY_DETAIL, arguments: [playList[index]]);
          },
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.width * 0.6,
                child: Image.asset(play.img, fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 30.0,
                  top: 5.0,
                ),
                child: CategoryNameRow(play: play),
              ),
            ],
          ),
        );
      },
    );
  }
}
