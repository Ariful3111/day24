import 'package:day24/Controller/Cart_Controller.dart';
import 'package:day24/Information_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<CartController>(
          builder: (c) {
            return Text("Total item is ${cartController.data.length}",
                style: TextStyle(color: Colors.black));
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: InkWell(
              onTap: (){
                cartController.data.clear();

              },
              child: Text(
                'Clear',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),

        child: Column(
          children: [
            GetBuilder<CartController>(
              builder: (c) {
                return ListView.separated(
                  shrinkWrap: true,


                  itemBuilder: (context, i) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "${cartController.data[i].productImg}"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${cartController.data[i].description}"),
                            Text(
                              "${cartController.data[i].productName}",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                                "${cartController.data[i].price * cartController.data[i].quantity}k.BDT "),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  elevation: 2,
                                  mini: true,
                                  backgroundColor: Colors.grey.shade300,
                                  onPressed: () {
                                    cartController.Decrement(i);
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${cartController.data[i].quantity}"),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  elevation: 2,
                                  mini: true,
                                  backgroundColor: Colors.grey.shade300,
                                  onPressed: () {
                                    cartController.incrementQuantity(i);

                                  },
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                FloatingActionButton(
                                  elevation: 2,
                                  mini: true,
                                  backgroundColor: Colors.orange,
                                  onPressed: () {
                                    cartController.removeFromCart(i);
                                    cartController.getTotal();
                                  },
                                  child: Icon(Icons.delete_outline),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, i) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: cartController.data.length,
                );
              },
            ),
            GetBuilder<CartController>(
              builder: (c) {
                return Container(
                  height: 50,
                  color: Colors.blue,
                  child: Text(
                    "Total price is  ${cartController.netTotal ?? 0}",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
