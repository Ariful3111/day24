import 'package:day24/Information_Page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
var _data=Information_page.info();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.compare_arrows,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.dribbble.com/users/1807056/screenshots/4666838/media/979dccdd11dcd97793f175fb334d0bc7.png?compress=1&resize=400x300&vertical=top'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'APR',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Personal wine\nsector',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    // primary: true,
                    //scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      mainAxisExtent: 300,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _data.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: (){},
                        child: Container(

                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                            // image: DecorationImage(
                            //   image: NetworkImage(_images[i]),
                            //   fit: BoxFit.cover,
                            // ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2.0, 2.0),
                                color: Colors.grey,
                                blurRadius: 5,
                                //blurStyle: BlurStyle.inner,
                              )
                            ],
                          ),
                          child:Column(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: NetworkImage(_data[i].productImg),
                                  fit: BoxFit.fill
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 35,
                                     right: 10,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.indigoAccent,
                                        child: Text('OV\n23'),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.pinkAccent.withOpacity(0.7),
                                        child: Text('96'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                               _data[i].productName,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _data[i].description,
                                style: TextStyle(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${_data[i].price}k.BDT',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
