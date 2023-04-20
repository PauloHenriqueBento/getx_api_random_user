import 'package:flutter/material.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://randomuser.me/api/portraits/men/75.jpg'),
          Text('Fulano'),
          Row(
            children: [Icon(Icons.email), Text('phbento@outlook.com.br')],
          ),
          Row(
            children: [
              Icon(Icons.calendar_month),
              Text('23-06-1999'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.home),
              Text('Rua alguma coisa, nº10 - SP - São Paulo / Brasil')
            ],
          ),
          Row(
            children: [Icon(Icons.phone), Text('11-12345-6789')],
          )
        ],
      ),
    );
  }
}
