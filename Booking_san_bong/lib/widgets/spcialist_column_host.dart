import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';

class SpecialistColumnHost extends StatelessWidget {
  final String specImg, specName,scopeSan,address,price;

  const SpecialistColumnHost({Key key, this.specImg, this.specName, this.scopeSan, this.address, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(specImg), fit: BoxFit.cover)),
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text(specName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.star, color:Colors.yellow[700], size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color:Colors.yellow[700], size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color:Colors.yellow[700], size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color:Colors.yellow[700], size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.lightColor, size: 14),
              ]
              ),            
              // SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.group, size: 15, color: Colors.grey[700]),
                SizedBox(width:2),
                Expanded(child: Text(scopeSan, style: TextStyle(
                  color: Colors.grey[700], fontSize: 12
                )))
              ],
              
              ),
              // SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.location_pin, size: 15, color: Colors.grey[700]),
                SizedBox(width:2),
                Expanded(child: Text(address, style: TextStyle(
                  color: Colors.grey[700], fontSize: 12
                )))
              ],   
              ),
               Row(children: <Widget>[
                Icon(Icons.attach_money, size: 15, color: Colors.grey[700]),
                SizedBox(width:2),
                Expanded(child: Text(price, style: TextStyle(
                  color: Colors.blue[900], fontSize: 12, fontWeight: FontWeight.bold
                )))
              ],
              
              ),
            ],
          ),
        )
      ],
    );
  }
}
