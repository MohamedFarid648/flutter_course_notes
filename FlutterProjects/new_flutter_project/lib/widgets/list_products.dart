import 'package:flutter/material.dart';
import 'package:new_flutter_project/data/product.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      body: ListView.separated(
        //ListView.builder without seperated , so you should use column to add container then seperated
        separatorBuilder: (context, index) => SizedBox(height: 50),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          final isEven = index % 2 == 0;
          return Container(
            color: isEven ? Colors.red : Colors.blue,
            child: ListTile(
              //leading: Image.network(product.imageUrl),
              title: Text(
                product.name,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(color: Colors.white70),
              ),
            ),
          );
        },
      ),

      /*SingleChildScrollView(
        scrollDirection: Axis.vertical, //for Column ,
        //scrollDirection: Axis.horizontal, //for Row ,
        child: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.blue),
            sizedBox,

            Container(height: 100, width: 100, color: Colors.red),
            sizedBox,

            Container(height: 100, width: 100, color: Colors.blue),
            sizedBox,

            Container(height: 100, width: 100, color: Colors.red),
            sizedBox,
          ],
        ),
      ),*/
    );
  }
}
