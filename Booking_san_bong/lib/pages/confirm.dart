
import 'package:Booking_san_bong/uidata.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
     var expanded = Expanded(
                     child: Divider(color: Colors.grey, height: 1.5,)
                   );
    return Scaffold(

        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

               SizedBox(width: 24),
              _notificationCard(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on,
                      color: Colors.green,),
                      Text(
                        " ĐỊA ĐIỂM",
                        style: TextStyle(
                          color: Colors.black, 
                          fontSize: 16)
                      ,)
                    ],
                  ),
                  
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    height: 60,
                    child: Row(
                    
                      children: [
                        Text('Sân 1, 235, Tây Hòa, Linh Mục, Thủ Đức', 
                          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 14)),
                      ],
                    ),
                  ),        
              ),
              Divider(
            color: Colors.grey[200],
            height: 3,
            thickness: 1,
          ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(Icons.list_alt,
                      color: Colors.green,),
                      Text(
                        " CHI TIẾT ĐẶT SÂN",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16)
                      ,)
                    ],
                  ),          
                ),             
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Container(
                    child: Row(
                      children: [
                        Text('Tên người đặt:          Thanh Tú\nCỡ sân:                        5v5\nNgày:                           20/02/2022\nGiờ:                              06:40 - 08:15', 
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                      ],
                    ),
                  ),
                  
              ),
               Divider(
              color: Colors.grey[200],
              height: 3,
              thickness: 1,
          ),
               Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.payment,
                      color: Colors.green,),
                      Text(
                        " TỔNG TẠM TÍNH",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16)
                      ,)
                    ],
                  ),          
                ),             
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Row(             
                  children: <Widget>[
                    Title(color: Colors.black, 
                        child: Text("Tiền sân: ",
                            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),                              
                        )
                    ),
                    Container(         
                      alignment: Alignment.center,            
                      margin: EdgeInsets.all(7),
                      width: 280,
                      height: 50,
                      child: Text(
                        "159.000 vnd",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green, fontSize: 20), 
                        )
                        ),
                    
                  ],
                ),
                  
              ),
               Divider(
              color: Colors.grey[200],
              height: 3,
              thickness: 1,
          ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                
                child: Row(
                  children: [Text("Phụ thu thêm giờ:",
                                  style: TextStyle(color: Colors.grey[600], fontSize:13, fontStyle: FontStyle.italic),
                  ),
                  Container(         
                      alignment: Alignment.center,            
                      margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                      width: 185,
                      height: 30,
                      child: Text(
                        " 0 vnd",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green, fontSize: 20), 
                        )
                        ),
                  ],
                ),
                ),  
             Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                
                child: Row(
                  children: [Text("Đã áp dụng mã giảm giá U22:",
                                  style: TextStyle(color: Colors.grey[600], fontSize:13, fontStyle: FontStyle.italic),
                  ),
                  Container(         
                      alignment: Alignment.center,            
                      margin: EdgeInsets.all(7),
                      width: 185,
                      height: 30,
                      child: Text(
                        "- 30.000 vnd",
                        textAlign: TextAlign.center,
                        style: TextStyle( fontSize: 20), 
                        )
                        ),
                  ],
                ),
                
                ),
               
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(                            
                  children: <Widget>[                    
                    Title(color: Colors.black, 
                        child: Text("Tổng cộng",
                            style: TextStyle(color: Colors.black, fontSize: 16),                     
                        ),                 
                    ),
                    Container(         
                      alignment: Alignment.center,            
                      margin: EdgeInsets.all(7),
                      width: 200,
                      height: 30,
                      child: Text(
                        "129.000 vnd",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold), 
                        )
                        ),
                  ],
                ),               
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(240, 0, 0, 0),
                
                child: Row(
                  children: [Text("(đã bao gồm thuế VAT(%))",
                                  style: TextStyle(color: Colors.grey[400], fontSize:13, fontStyle: FontStyle.italic),
                  )],
                ),),
              
               
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 90, 10),
                
                child: Row(            
                 mainAxisAlignment: MainAxisAlignment.end,          
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      color: Colors.green,
                      
                      height: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, UIData.mainPageRoute);
                      }, 
                      child: Text("XÁC NHẬN ĐẶT SÂN", style: TextStyle(color: Colors.white,fontSize: 24),))
                  ],
                ),              
              ),
            ],
          ),
        ),
    );
    
  }
  PreferredSizeWidget appBar(){
  return AppBar(
     backgroundColor: Colors.green,
    title:Container(
      child: Text(
        'Xác nhận đặt sân',
        style: TextStyle(color: Colors.white, fontSize: 24),
        )),
  );
}


}

    Container _notificationCard() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        // gradient: redGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.edit_calendar_outlined ,
          color: Colors.black,
          size: 32,
        ),
        title: Text(
          'Bạn không thể hủy lịch đặt sân trước 30 phút.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }