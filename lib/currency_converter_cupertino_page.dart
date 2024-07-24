import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPageStateFul extends StatefulWidget {
  const CurrencyConverterCupertinoPageStateFul({super.key});

  @override
  State<CurrencyConverterCupertinoPageStateFul> createState() =>
      _MyWidgetState();
}

class _MyWidgetState extends State<CurrencyConverterCupertinoPageStateFul> {
  double result = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(96, 125, 139, 1),
      //APPBAR
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: CupertinoColors.systemGrey3,
      ),
      //BODY
      child: ColoredBox(
        color: CupertinoColors.systemGrey3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              // color: CupertinoColors.black,
              // height: 200,
              // width: 200,

              child: Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : "0"}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                placeholder: 'Enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar_circle),
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(60),
                  color: CupertinoColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: CupertinoButton(
                onPressed: () {
                  //FUNCTION
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                color: CupertinoColors.black,
                // minSize: double.infinity,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
