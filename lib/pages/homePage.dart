import 'package:add_to_cart/cartmodel.dart';
import 'package:add_to_cart/compnents/Groceryitem.dart';
import 'package:add_to_cart/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Cart(),
            ),
          );
        },
        child: Icon(
          Icons.card_travel_sharp,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 48,
            ),
            Text("good morning",
                style: TextStyle(
                  color: Colors.black,
                )),
            Text("let's order fresh items for you",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("fresh items",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(child: Consumer<Cartmodel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Groceryitem(
                          onPressed: () {
                            value.addtocart(index);
                          },
                          itemname: value.items[index]["name"],
                          price: value.items[index]["price"],
                          imagepath: value.items[index]["Imagepath"],
                          bpxcolor: value.items[index]["color"]);
                    });
              },
            ))
          ]),
        ),
      ),
    );
  }
}
