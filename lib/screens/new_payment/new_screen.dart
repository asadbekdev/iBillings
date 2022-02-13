import 'package:flutter/material.dart';
import 'package:ibiling/screens/new_payment/contract/new_contract.dart';
import 'package:ibiling/screens/new_payment/invoice/new_invoice.dart';

class NewScreen extends StatelessWidget {
  static int? routeIndex;
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routeIndex == 1
          ? const NewContractScreen()
          : const NewInvoiceScreen(),
    );
  }
}
