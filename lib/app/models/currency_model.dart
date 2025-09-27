class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return [
      CurrencyModel(name: "Real", real: 1, dolar: 0.20, euro: 0.18, bitcoin: 0.0000047),
      CurrencyModel(name: "Dólar", real: 5.25, dolar: 1, euro: 0.91, bitcoin: 0.000023),
      CurrencyModel(name: "Euro", real: 5.75, dolar: 1.10, euro: 1, bitcoin: 0.000025),
      CurrencyModel(name: "Bitcoin", real: 213000, dolar: 43000, euro: 39000, bitcoin: 1),
    ];
  }
}
