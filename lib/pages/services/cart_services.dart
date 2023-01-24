// import 'dart:html';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:pos/pages/models/cart_model.dart';

// class CartServices {
//   CollectionReference _cartReference =
//       FirebaseFirestore.instance.collection('cart');

//   // NOTE : FETCH
//   Future<List<CartModel>> fetchCart() async {
//     try {
//       QuerySnapshot result = await _cartReference.get();

//       List<CartModel> cart = result.docs.map((e) {
//         return CartModel.fromJson(e.id, e.data() as Map<String, dynamic>);
//       }).toList();
//       return cart;
//     } catch (e) {
//       throw e;
//     }
//   }

//   Future getCartItem(
//       {required String nama_product, int harga_product = 0}) async {
//     final docCartList = FirebaseFirestore.instance.collection('cart').doc();

//     final json = {
//       nama_product: nama_product,
//       harga_product: harga_product,
//     };
//     await docCartList.set(json);
//   }

  // Future setCartItem(CartModel cartList) async {
  //   try {
  //     _cartReference.doc(cartList.id).set({
  //       'nama_product': cartList.nama_product,
  //       'harga_product': cartList.harga_product,
  //     });
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  // Future getCartItem(CartModel cartList) async {
  //   try {
  //     _cartReference.doc(cartList.id).set({
  //       'nama_product': cartList.nama_product,
  //       'harga_product': cartList.harga_product,
  //     });
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  // Future<CartModel> getCartItem() async {
  //   try {
  //     DocumentSnapshot snapshot = await _cartReference.doc(id).get();
  //     return CartModel(
  //       id: id,
  //       nama_product: snapshot['nama_product'],
  //       harga_product: snapshot['harga_product'],
  //     );
  //   } catch (e) {
  //     throw e;
  //   }
  // }
// }
