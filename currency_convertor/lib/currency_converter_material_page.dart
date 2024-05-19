import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textContriller = TextEditingController();
  double result = 0;

  void convert() {
    result = double.parse(textContriller.text) * 300;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const bordr = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 48, 45, 44),
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Conveter'),
        centerTitle: true,
      ),
      body: Center(
        child: ColoredBox(
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LKR ${result.toString()}',
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textContriller,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 34, 33, 33),
                    fontSize: 25,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                    ),
                    prefixIconColor: Color.fromRGBO(0, 0, 0, 0.702),
                    hintText: 'Enter Amount (LKR)',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 34, 36, 37)),
                    filled: true,
                    fillColor: Colors.white70,
                    focusedBorder: bordr,
                    enabledBorder: bordr,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: convert,
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white60),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black87),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    minimumSize: const MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
