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

  incrementQuantity(int index){
    data[index].quantity++;
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