import 'package:flutter/material.dart';
import 'package:new_flutter_project/data/product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String nameState = "";
  double priceState = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedBox,
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Product Name',
                hintText: 'e.g., iPhone 15 Pro',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.book),
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the product name';
                }
                return null;
              },
              onSaved: (value) {
                print(value);
                //_name = value;
              },
            ),
            sizedBox,
            TextFormField(
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Product Price',
                hintText: '20',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.money),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the product price';
                }
                return null;
              },
              onSaved: (value) {
                print(value);
                //_name = value;
              },
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () => {
                nameState = nameController.text,
                priceState = double.parse(priceController.text),
                setState(() {
                  //  dummyProducts.add();
                }),
                //Navigator.canPop(context)
                //Navigator.pushNamed(context, RouteNames.productsGridViewScreen),
              },
              color: Colors.red,
              child: Text("Submit", style: TextStyle(color: Colors.white)),
            ),
            sizedBox,
            Text(nameState),
            Text(priceState.toString()),
          ],
        ),
      ),
    );
  }
}
