import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/constants/color_constants.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/custom_widgets/custom_elevared_button.dart';
import 'package:oracle/app/modules/profile/widgets/user_ph_tl_wh_widget.dart';

import 'offer_user_list_builder.dart';

class OffersListBuilder extends StatelessWidget {
  const OffersListBuilder({
    Key? key,
    required this.offers,
  }) : super(key: key);

  final List<OffersModel> offers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: offers.length,
      itemBuilder: (context, index) {
        OffersModel offer = offers[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferUserList(offer: offer),
            const SizedBox(height: 15.0),
            Text(
              offer.description,
              style: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayTextColor),
            ),
            const SizedBox(height: 30.0),
            UserPhoneTlWhatsApp(),
            const SizedBox(height: 15.0),
            Text(
              offer.time,
              style: Get.textTheme.caption!
                  .copyWith(color: MyColors.grayTextColor),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  width: 210.0,
                  function: () {
                    Get.toNamed(Routes.SELECT_PERFORMER,
                        arguments: [offer.user, offer.money]);
                  },
                  text: "Выбрать исполнителем",
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            CustomDivider(),
            const SizedBox(height: 30.0),
          ],
        );
      },
    );
  }
}
