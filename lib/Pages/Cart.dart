import 'package:day24/Information_Page.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
   Cart({Key? key,this.cartdata}) : super(key: key);
List<Information_page>? cartdata;
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var netTotal;

  void getTotal(){
    netTotal = widget.cartdata!.map((item) => item.price.toInt() * item.quantity )
        .reduce((value, element) => value+element);
  }

  @override
  void initState()  {
    // TODO: implement initState
    widget.cartdata!.length>0?  getTotal() :null;
    print("ikhdfdasgasiuasgifruisrgfsdgfiusdgfiuosdghfiudg");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
        elevation: 0,
          backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('Clear(2)',
              style: TextStyle(
                  color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context,i){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage("${widget.cartdata![i].productImg}"),),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.cartdata![i].description}"),
                    Text("${widget.cartdata![i].productName}",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Text("${widget.cartdata![i].price}k.BDT "),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        FloatingActionButton(
                          elevation: 2,
                          mini: true,
                          backgroundColor: Colors.grey.shade300,
                          onPressed: () {
                          },
                          child: Icon(Icons.remove),
                        ),
                        SizedBox(width: 5,),
                        Text('1'),
                        SizedBox(width: 5,),
                        FloatingActionButton(
                          elevation: 2,
                          mini: true,
                          backgroundColor: Colors.grey.shade300,
                          onPressed: () {
                          },
                          child: Icon(Icons.add),
                        ),
                        SizedBox(width: 100,),
                        FloatingActionButton(
                          elevation: 2,
                          mini: true,
                          backgroundColor: Colors.orange,
                          onPressed: () {
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
          separatorBuilder: (context,i){
        return SizedBox(height: 20,);
          },
          itemCount: widget.cartdata!.length,
      ),
    );
  }
}
