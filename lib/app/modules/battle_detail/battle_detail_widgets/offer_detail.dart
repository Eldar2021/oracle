import 'package:flutter/material.dart';
import 'package:oracle/app/data/models/offers_model/offers_model.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import 'package:oracle/widgets/list_builder/offers_list_builder.dart';

class OffersDetail extends StatelessWidget {
  const OffersDetail({
    required this.offers,
    Key? key,
  }) : super(key: key);

  final List<OffersModel> offers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: double.infinity,
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("У вас 31 предложений"),
              const SizedBox(height: 15.0),
              CustomDivider(),
              OffersListBuilder(offers: offers)
            ],
          ),
        ),
      ),
    );
  }
}
