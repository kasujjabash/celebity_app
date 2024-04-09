import 'package:cafe/componets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'ordering.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';

  String cvvCode = '';
  bool isCvvFocused = false;

  //user wants to pay
  void userTapedPay() {
    if (formKey.currentState!.validate()) {
      //only show a dialog if the form key is valid
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Confirm payment'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Card number: $cardNumber'),
                      Text('Expiry date: $expiryDate'),
                      Text('Card holder name: $cardHolderName'),
                      Text('CVV: $cvvCode'),
                    ],
                  ),
                ),
                actions: [
                  // cancel
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel")),
                  // yes
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OrderingInProgress()));
                      },
                      child: const Text("Yes")),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Add payment details'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //credit card
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {}),

            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey),
            // const Spacer(),
            //pay now button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyButton(text: 'Pay now', onTap: userTapedPay),
            )
          ],
        ),
      ),
    );
  }
}
