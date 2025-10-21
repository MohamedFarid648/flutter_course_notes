import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/data/product.dart';
import 'package:new_flutter_project/widgets/app_bar_custom.dart';

class GridviewProducts extends StatelessWidget {
  const GridviewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      appBar: AppBarCustom(title: "Products"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.productFormScreen);
        },
        child: Icon(Icons.add),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5, //height to width
        ),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          final isEven = index % 2 == 0;
          return Card(
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
