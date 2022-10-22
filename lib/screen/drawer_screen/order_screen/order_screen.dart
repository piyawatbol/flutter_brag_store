// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:barg_store_app/screen/drawer_screen/drawer_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  final VoidCallback openDrawer;
  const OrderScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: DrawerMenuWidget(
            onClicked: () {
              openDrawer();
            },
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(15), child: SizedBox()),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Accepted List"),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "รายละเอียดคำสั่งซื้อ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "คำสั่งซื้อที่ 1",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                buildMenuList2(context, "1", "กระเพราไก่ไข่ดาว",
                                    "2", "120"),
                                buildMenuList2(
                                    context, "2", "ข้าวหมูกระเทียม", "1", "50"),
                                buildMenuList2(context, "3", "ข้าวไก่กระเทียม",
                                    "3", "120"),
                                buildMenuList2(
                                    context, "4", "ข้าวไ่ข่เจียว", "2", "120"),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text("รวม"), Text("410 บาท")],
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFD646),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Text(
                                    "กำลังรอคนขับ",
                                    style: TextStyle(fontSize: 22),
                                  )),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }

  buildMenuList2(
      context, String? number, String? name, String? count, String? price) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.43,
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(number.toString()), Text(name.toString())],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: 20,
          child: Text(
            count.toString(),
            textAlign: TextAlign.end,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 20,
          child: Text(
            price.toString(),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}