import '../model/Product.dart';

abstract class GetProdcutRepositoy {
  Future<List<Product>> fetch();
}
