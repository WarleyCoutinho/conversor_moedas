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
      // Valores atualizados para setembro de 2025
      CurrencyModel(name: "Real", real: 1, dolar: 0.187, euro: 0.160, bitcoin: 0.0000017),
      CurrencyModel(name: "Dólar", real: 5.34, dolar: 1, euro: 0.853, bitcoin: 0.0000091),
      CurrencyModel(name: "Euro", real: 6.25, dolar: 1.17, euro: 1, bitcoin: 0.0000107),
      CurrencyModel(name: "Bitcoin", real: 586500, dolar: 109900, euro: 93712, bitcoin: 1),
    ];
  }
}
