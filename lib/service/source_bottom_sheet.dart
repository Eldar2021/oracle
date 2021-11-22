import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/respond/controllers/respond_battle_controller.dart';
import 'package:oracle/constants/color_constants.dart';

class Source {
  static void sourceBottomSheet(
    BuildContext context, {
    required List<UserModel> users,
    required TextEditingController textEditingController,
    RespondBattleController? controller,
    Function? search,
    required Function onChanged,
    Function? select,
  }) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: MyColors.backgroundColor,
      barrierColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          height: Get.height * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'Введите имя или ник'),
                controller: textEditingController,
                autofocus: true,
                onChanged: (val) {
                  onChanged(val);
                },
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller?.newUsers.length ?? users.length,
                    itemBuilder: (context, index) {
                      UserModel user =
                          controller?.newUsers[index] ?? users[index];
                      return InkWell(
                        onTap: () {
                          if (select != null) {
                            select(user);
                          } else {}
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: MyColors.backgroundColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: MyColors.redColor,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                user.photoProfile,
                                width: 42,
                                height: 42,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(width: 15),
                              Text("${user.name} ${user.nickName}"),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
