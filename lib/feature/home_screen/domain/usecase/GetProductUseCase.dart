import 'package:cafa_app/feature/home_screen/domain/model/Product.dart';
import 'package:cafa_app/feature/home_screen/domain/repository/GetProductRepositor.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductUseCase{
  GetProdcutRepositoy getProdcutRepositoy;
  GetProductUseCase(this.getProdcutRepositoy);
  Future<List<Product>> fetch(){
    return getProdcutRepositoy.fetch();
  }
}