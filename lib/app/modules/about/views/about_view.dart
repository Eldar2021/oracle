import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/generated/assets.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun?",
          style: Get.textTheme.subtitle1!.copyWith(height: 1.5),
        ),
        const SizedBox(height: 20.0),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar eu in quam netus et duis sodales maecenas tristique. Enim tempor arcu sit ut justo, arcu id. Velit sit etiam lacus id non eu enim ornare. Phasellus mauris leo in pulvinar. Pretium ut nunc diam facilisis mi pretium. Vitae rhoncus ultrices neque mi pellentesque elit. Est in venenatis mauris lacus, tortor. Lectus ipsum tellus feugiat cras amet, ut dui. Non justo posuere pulvinar eget maecenas cursus sem odio. Et placerat commodo morbi at. Nec viverra non eget enim.",
          style: Get.textTheme.subtitle1!.copyWith(height: 1.5),
        ),
        const SizedBox(height: 50.0),
        Text(
          "Разработано и\nподдерживается компанией",
          textAlign: TextAlign.center,
          style: Get.textTheme.subtitle1!.copyWith(height: 1.5),
        ),
        const SizedBox(height: 10.0),
        Image.asset(Assets.gameImagesOracle, width: Get.width * 0.3),
        const SizedBox(height: 80.0),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('О приложении'),
      centerTitle: true,
    );
  }
}
