import 'package:flutter/material.dart';

class Groceryitem extends StatelessWidget {
   Groceryitem({
    Key? key,
    this.itemname,
    this.price,
    this.imagepath,
     @required this.bpxcolor,
    @required this.onPressed
  }) : super(key: key);

  final String? itemname;
  final String? imagepath;
  final double? price;
  final Color? bpxcolor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: bpxcolor != null
              ? bpxcolor!.withOpacity(0.1)
              : Colors.grey.withOpacity(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 64.0,
              child: Image.asset(imagepath!),
            ),
            Text(
              itemname!,
            ),
            MaterialButton(
              onPressed: onPressed,
              child: Text("\$$price"),
              color: bpxcolor,
            )
          ],
        ),
      ),
    );
  }
}
