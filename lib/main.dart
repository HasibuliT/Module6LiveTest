import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActvity(),
    );
  }
}

MySnakbar(message,context){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
  );
}


class HomeActvity extends StatelessWidget {
  const HomeActvity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Shopping List"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: (){
              MySnakbar('Cart is empty', context);
            }, icon: Icon(Icons.shopping_cart)),
          ],
        ),

        body: ListView(
          children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: Icon(Icons.shopping_basket,size: 30,), title: Text('Apples')
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: Icon(Icons.shopping_basket,size: 30,), title: Text('Bananas')
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: Icon(Icons.shopping_basket,size: 30,), title: Text('Bread')
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: Icon(Icons.shopping_basket,size: 30,), title: Text('Milk')
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                leading: Icon(Icons.shopping_basket,size: 30,), title: Text('Eggs')
            ),
          ),
        ],),
    );
  }
}
