import 'package:flutter/material.dart';
import 'package:responsive_dash_bord/widgets/custom_container.dart';
import 'package:responsive_dash_bord/widgets/quick_invoice_widget.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: const CustomContainer(cild: QuickInvoiceWidget()));
  }
}
