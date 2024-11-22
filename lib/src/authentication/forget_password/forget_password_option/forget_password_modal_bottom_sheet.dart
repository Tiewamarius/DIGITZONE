import 'package:flutter/material.dart';
import 'package:digitzone/src//constants/size.dart';
import 'package:digitzone/src//constants/text_string.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTilte,
                style: Theme.of(context).textTheme.headlineLarge),
            Text(tForgetPasswordsubTilte,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              title: tEmail,
              subTitle: tResetViaEmail,
              btnIcon: Icons.mail_outline_rounded,
              onTap: () {
                Navigator.pop(context);
                //Get.to(() => ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              title: tPhone,
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
