import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pos/pages/models/product_model.dart';

class ProductServices {
  CollectionReference _productsRef =
      FirebaseFirestore.instance.collection('products');

  Future<List<ProductModel>> fetchProducts() async {
    try {
      QuerySnapshot result = await _productsRef.get();

      List<ProductModel> products = result.docs.map((e) {
        return ProductModel.fromJson(e.id, e.data() as Map<String, dynamic>);
      }).toList();
      return products;
    } catch (e) {
      throw e;
    }
  }
}
