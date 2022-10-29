import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/extension.dart';
import 'package:money_app/presentation/pages/detail/widgets/select_card_detail_widget.dart';

import '../../../../common/style.dart';
import '../../home/main_page.dart';

class ContentDetailWidget extends StatelessWidget {
  const ContentDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 20,
        ),
        color: greyBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 70,
                color: black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                'Send money',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SelectCardDetailWidget(),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose recipient',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Icon(
                        Icons.security,
                        color: black,
                      ),
                      hintText: 'Type name/card/phone number/email',
                      hintStyle: TextStyle(
                        color: greyText,
                        fontSize: 12,
                      ),
                      fillColor: white,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 16,
                    children: [
                      Image.asset(
                        'user-1'.path,
                        width: 60,
                      ),
                      Image.asset(
                        'user-2'.path,
                        width: 60,
                      ),
                      Image.asset(
                        'user-3'.path,
                        width: 60,
                      ),
                      Image.asset(
                        'user-4'.path,
                        width: 60,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Amount',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '\$75.00',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('line-vertical'.path),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CheckboxListTile(
                    value: true,
                    contentPadding: const EdgeInsets.all(0),
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'Agree with ideate’s terms and conditions',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                    onChanged: (val) {},
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width, 50),
                    ),
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.scale,
                        title: 'Success',
                        desc: 'Complete to send your Money',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          Get.off(() => MainPage());
                        },
                      ).show();
                    },
                    child: Text(
                      "Send money",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
