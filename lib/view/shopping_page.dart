import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(children: [
        Expanded(
          child: GetX<ShoppingController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.products[index].productName,
                                      style: const TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(controller
                                        .products[index].productDescription)
                                  ],
                                ),
                                Text(
                                  '${controller.products[index].price}',
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add to cart'),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Total amount',
          style: TextStyle(fontSize: 25, color: Colors.white),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          'item',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        icon: const Icon(
          Icons.add_shopping_cart_rounded,
        ),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
