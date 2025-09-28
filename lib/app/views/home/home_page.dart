import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  void dispose() {
    toText.dispose();
    fromText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 150, height: 150),
              SizedBox(height: 80),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                items: homeController.currencies,
                controller: toText,
                onChanged: (model) {
                  homeController.toCurrency = model;
                },
              ),
              SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                items: homeController.currencies,
                controller: fromText,
                onChanged: (model) {
                  homeController.fromCurrency = model;
                },
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    homeController.setToCurrency();
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
                ),
                child: Text('CONVERTER', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
