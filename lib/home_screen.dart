import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiobutton/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<homeprovider>(
        builder: (context, provider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.selectedValue,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
        
            RadioListTile(
              title: Text('Others'),
              value: 'Others',
              groupValue: provider.selectedValue,
              onChanged: (selectedValue) {
                provider.selectValue(selectedValue.toString());
              },
            ),
            RadioListTile(
              title: Text('Male'),
              value: 'Male',
              groupValue: provider.selectedValue,
              onChanged: (selectedValue) {
                provider.selectValue(selectedValue.toString());
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: provider.selectedValue,
              onChanged: (selectedValue) {
                provider.selectValue(selectedValue.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
