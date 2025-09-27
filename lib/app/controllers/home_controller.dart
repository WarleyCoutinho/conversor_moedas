import 'package:conversor_moedas/app/models/currency_model.dart';

class HomeController {
  List<CurrencyModel> currencies = CurrencyModel.getCurrencies();
  CurrencyModel? fromCurrency;
  CurrencyModel? toCurrency;
  double? fromValue;
  double? toValue;

  HomeController() {
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    if (fromCurrency == null || toCurrency == null || fromValue == null) {
      toValue = null;
      return;
    }

    switch (toCurrency!.name) {
      case "Real":
        toValue = fromValue! * fromCurrency!.real;
        break;
      case "Dólar":
        toValue = fromValue! * fromCurrency!.dolar;
        break;
      case "Euro":
        toValue = fromValue! * fromCurrency!.euro;
        break;
      case "Bitcoin":
        toValue = fromValue! * fromCurrency!.bitcoin;
        break;
      default:
        toValue = null;
    }
  }
}
