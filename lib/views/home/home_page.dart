import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 150, height: 150),
              SizedBox(height: 80),
              CurrencyBox(),
              SizedBox(height: 10),
              CurrencyBox(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
