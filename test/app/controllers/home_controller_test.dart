import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);
  // Valores atualizados para setembro de 2025
  test('Deve converte de real para dolar com ponto', () {
    homeController.toCurrency = homeController.currencies[1];
    homeController.fromCurrency = homeController.currencies[0];
    homeController.toText.text = '1';
    homeController.setToCurrency();
    expect(homeController.fromText.text, '5.34');
    // toText.text = '1';
    // homeController.setToCurrency();
    // expect(fromText.text, '0.19');
  });

  test('deve converte de real para dolar com virgula', () {
    homeController.toCurrency = homeController.currencies[1];
    homeController.fromCurrency = homeController.currencies[0];
    toText.text = '1,5';
    homeController.setToCurrency();
    expect(fromText.text, '8.01');
  });

  test('Deve converte de dolar para real', () {
    homeController.toCurrency = homeController.currencies[0];
    homeController.fromCurrency = homeController.currencies[1];
    toText.text = '1';
    homeController.setToCurrency();
    expect(fromText.text, '0.19');
  });

  test('Deve converte de euro para real', () {
    homeController.toCurrency = homeController.currencies[0];
    homeController.fromCurrency = homeController.currencies[2];
    toText.text = '1';
    homeController.setToCurrency();
    expect(fromText.text, '0.16');
  });

  test('Deve converte de bitcoin para real', () {
    homeController.toCurrency = homeController.currencies[0];
    homeController.fromCurrency = homeController.currencies[3];
    toText.text = '1';
    homeController.setToCurrency();
    expect(fromText.text, '0.00');
  });
}
