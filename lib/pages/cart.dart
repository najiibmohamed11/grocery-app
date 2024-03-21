import 'package:add_to_cart/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Consumer<Cartmodel>(
            builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  itemCount: value.cartmodel.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: ListTile(
                        leading:
                            Image.asset(value.cartmodel[index]["Imagepath"]),
                        title: Text(value.cartmodel[index]["name"]),
                        subtitle:
                            Text(value.cartmodel[index]["price"].toString()),
                        trailing: IconButton(
                            onPressed: () {
                              value.deledcart(index);
                            },
                            icon: Icon(Icons.cancel)),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
