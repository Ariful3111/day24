import 'package:day24/Information_Page.dart';
import 'package:get/state_manager.dart';

class CartController extends GetxController{

  List<Information_page> data = [];

  addtocart(Information_page information_page){
    data.add(information_page);
    getTotal();
    update();
  }
  removeFromCart(int index){
    data.removeAt(index);
    update();
  }
  void Decrement(int index){
    data[index].quantity > 0
        ? data[index].quantity--
        : data.removeAt(index);
       getTotal();
       update();
  }

  incrementQuantity(int index){
    data[index].quantity++;
    getTotal();
    update();
  }

  var netTotal;

  getTotal(){
    netTotal = data.map((item) => item.price.toInt() * item.quantity )
        .reduce((value, element) => value+element);
    update();
  }

  @override
  void onInit() {
    data.length>0?  getTotal() :null;
    update();
    super.onInit();
  }
}