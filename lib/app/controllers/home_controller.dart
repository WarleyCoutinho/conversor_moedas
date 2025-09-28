import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  //List<CurrencyModel> currencies = CurrencyModel.getCurrencies();
  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void setToCurrency() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency?.name == 'Real') {
      returnValue = value * (toCurrency?.real ?? 0);
    } else if (fromCurrency?.name == 'Dólar') {
      returnValue = value * (toCurrency?.dolar ?? 0);
    } else if (fromCurrency?.name == 'Euro') {
      returnValue = value * (toCurrency?.euro ?? 0);
    } else if (fromCurrency?.name == 'Bitcoin') {
      returnValue = value * (toCurrency?.bitcoin ?? 0);
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
