import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel? selectedItem;
  //final void Function(CurrencyModel? model)? onChanged;

  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox({
    super.key,
    required this.items,
    required this.controller,
    this.onChanged,
    this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: selectedItem,
              underline: Container(height: 1, color: Colors.amber),
              items: items.map((e) => DropdownMenuItem(value: e, child: Text(e.name))).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(width: 10),

        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
              //labelText: 'Valor em Reais',
            ),
          ),
        ),
      ],
    );
  }
}
