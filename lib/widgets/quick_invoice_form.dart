import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widgets/custom_botton.dart';
import 'package:responsive_dash_bord/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: ('Customer Name'),
                hintText: 'Type Customer Name',
              ),
            ),
            Expanded(
              child: CustomTextField(
                title: 'Customer Email',
                hintText: 'Type Customer Email',
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: 'Item Name',
                hintText: 'Type Customer Name',
              ),
            ),
            Expanded(
              child: CustomTextField(
                title: "Item mount",
                hintText: 'USD',
              ),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomBotton(
              backColor: Colors.transparent,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomBotton(
              textColor: Color(0xFFFFFFFF),
            )),
          ],
        )
      ],
    );
  }
}
