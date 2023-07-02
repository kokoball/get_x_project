import 'package:get/get.dart';
import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    var productData = [
      Product(
        id: 1,
        price: 30,
        productDescription: 'some description',
        productName: 'Mouse1',
      ),
      Product(
        id: 2,
        price: 330,
        productDescription: 'some description',
        productName: 'Mouse2',
      ),
      Product(
        id: 3,
        price: 33140,
        productDescription: 'some description',
        productName: 'Mouse3',
      ),
      Product(
        id: 4,
        price: 3340,
        productDescription: 'some description',
        productName: 'Mouse4',
      ),
      Product(
        id: 5,
        price: 1430,
        productDescription: 'some description',
        productName: 'Mouse5',
      )
    ];

    products.assignAll(productData);
  }
}
