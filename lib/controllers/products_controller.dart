import 'package:beespoke_assigment/controllers/products_repository.dart';
import 'package:get/get.dart';


class ProductsController extends GetxController {
  ProductsRepository productsRepository = ProductsRepository();
  RxBool loading = false.obs;
  List products = [].obs;
  var showGrid = false.obs;

  ProductsController() {
    loadProductsFromRepo();
  }

  loadProductsFromRepo() async {
    loading(true);
    products = await productsRepository.loadProductsFromApi();
    loading(false);
  }

  toggleGrid() {
    showGrid(!showGrid.value);
  }
}