import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Chonsan.dart';

class FootballField extends StatelessWidget {
  const FootballField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              backgroundColor: Colors.green,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/thuduc.png',
                        fit: BoxFit.fill,
                      )))),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                // height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Sân thủ đức',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black26.withOpacity(0.3))
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Giờ Hoạt Động : 5h-00h",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Spacer(),
                                Text("Địa Chỉ : TP. Hồ Chí Minh",
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                Spacer(),
                                Text("Thông Tin Liên Hệ : 0912344567",
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                Spacer(),
                                Text("Giá Sân : 200.000 ~ 300.000/h",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ))
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Khung Giờ Vàng',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black26.withOpacity(0.3))
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.sports_soccer,
                                      size: 30,
                                    ),
                                    Text("Khuyến Mãi 50%",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: const [
                                    Icon(Icons.local_fire_department_rounded,
                                        size: 30),
                                    Text("11h ~ 12h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Spacer(),
                                    Text("150.000/h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: const [
                                    Icon(Icons.local_fire_department_rounded,
                                        size: 30),
                                    Text("12h ~ 13h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Spacer(),
                                    Text("100.000/h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: const [
                                    Icon(Icons.local_fire_department_rounded,
                                        size: 30),
                                    Text("13h ~ 14h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Spacer(),
                                    Text("150.000/h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: const [
                                    Icon(Icons.local_fire_department_rounded,
                                        size: 30),
                                    Text("14h ~ 15h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        )),
                                    Spacer(),
                                    Text("150.000/h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ))
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Dich Vụ Tại Sân',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.black26.withOpacity(0.3))
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.shower_rounded,
                                  size: 40,
                                ),
                                Text("  Phòng Tắm",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                                Text("  Cho Thuê Áo Pitch",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Icon(
                                  Icons.wine_bar_outlined,
                                  size: 40,
                                ),
                                Text("  Nước Đá Miễn Phí",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Icon(
                                  Icons.snowshoeing_sharp,
                                  size: 40,
                                ),
                                Text("  Cho Thuê Giày",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: SizedBox(
                        width: 250,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13))),
                          child: Text(
                            'Đặt sân',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                         Chonsan()));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
