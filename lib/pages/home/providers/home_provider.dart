import 'package:riverpod/riverpod.dart';
import 'package:zarcony_app/pages/home/models/product_model.dart';

class HomeProvider extends StateNotifier<List<ProductModel>>  {
  HomeProvider([List<ProductModel>? initialTodos]) : super(initialTodos ?? []);

  void add(ProductModel product) {
    state = [
      ...state,
      product
       
      
    ];
  }

  void remove(ProductModel target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }

 final List<ProductModel> productList = [
    ProductModel(id: 1, price: 24, title: 'Turkish Steak'),
    ProductModel(id: 2, price: 4, title: 'Egypt Steak'),
    ProductModel(id: 3, price: 55, title: 'Soudan Steak'),
    ProductModel(id: 4, price: 66, title: 'Maghrep Steak'),
    ProductModel(id: 5, price: 24, title: 'Endonosia Steak'),
    ProductModel(id: 6, price: 8, title: 'Hegaz Steak'),
    ProductModel(id: 7, price: 5, title: 'USA Steak'),
    ProductModel(id: 8, price: 44, title: 'NAto Steak'),
    ProductModel(id: 9, price: 22, title: 'Any  Steak'),
    ProductModel(id: 10, price: 8, title: 'Turkish Steak'),
  ];
  
  

}
