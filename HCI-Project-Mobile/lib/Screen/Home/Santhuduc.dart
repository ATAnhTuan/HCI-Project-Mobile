import 'package:flutter/material.dart';
import 'BottomBar.dart';

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
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Sân thủ đức',
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
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
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Sân thủ đức',
                          style: const TextStyle(
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
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Text('Sân thủ đức',
                          style: const TextStyle(
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
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
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
                          onPressed: () {},
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