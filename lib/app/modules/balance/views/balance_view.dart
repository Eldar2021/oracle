import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/balance/views/web_view.dart';
import '../widgets/argumet_text.dart';
import '../widgets/credit_card.dart';
import '../widgets/row_money.dart';
import '../widgets/row_with_true_array.dart';
import 'package:oracle/generated/assets.dart';
import 'package:oracle/widgets/custom_widgets/custom_divider.dart';
import '../controllers/balance_controller.dart';

class BalanceView extends GetView<BalanceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
        controller.text == ""
            ? Container()
            : ArgumentsText(text: controller.text),
        RowMoney(
          text: "Ваш счет:",
          value: "${controller.appPageController.user.value.money} сом",
        ),
        const SizedBox(height: 20.0),
        CustomDivider(),
        const SizedBox(height: 15.0),
        RowMoney(
          text: "Sed ut perspiciatis unde ",
        ),
        const SizedBox(height: 25.0),
        RowWithTrueArray(
          text: "Еomnis iste natus error sit voluptatem accusantium doloremque",
        ),
        const SizedBox(height: 15.0),
        RowWithTrueArray(
          text:
              "Рaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore",
        ),
        const SizedBox(height: 25.0),
        CreditCard(
          icon: Assets.backgroundVisa,
          text: "Visa, MasterCard",
          function: () async{
            print("eldar1");
            Get.to(()=>MyWebView());
            print("eldar");
          },
        ),
        const SizedBox(height: 20.0),
        CreditCard(
          icon: Assets.backgroundPay,
          text: "Pay24",
          function: () {
            Get.to(()=>MyWebView());
          },
        ),
        const SizedBox(height: 20.0),
        CreditCard(
          icon: Assets.backgroundElsom,
          text: "Элсом",
          function: () {
            Get.to(()=>MyWebView());
          },
        ),
        const SizedBox(height: 50.0),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Пополнение баланса'),
      centerTitle: true,
    );
  }
}
