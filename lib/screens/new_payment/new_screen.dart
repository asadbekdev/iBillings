import 'package:flutter/material.dart';
import 'package:ibiling/screens/new_payment/contract/new_contract.dart';
import 'package:ibiling/screens/new_payment/invoice/new_invoice.dart';

class NewScreen extends StatelessWidget {
  final int? newPaymentType;
  const NewScreen({ Key? key, this.newPaymentType }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: newPaymentType == 0 ? NewContractScreen() : NewInvoiceScreen(),
    );
  }
}