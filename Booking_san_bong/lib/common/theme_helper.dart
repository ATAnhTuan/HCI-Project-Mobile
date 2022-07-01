import 'package:flutter/material.dart';

class ThemeHelper{
  InputDecoration textInputDecoration([String lableText="", String hintText =""]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green,style: BorderStyle.solid)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green.shade400, style: BorderStyle.solid)),
    );
  }
  InputDecoration textInputPasswordDecoration([String lableText="", String hintText ="", bool _isObscure = false]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green, style: BorderStyle.solid)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green.shade400, style: BorderStyle.solid)),
      suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {                     
                        _isObscure = !_isObscure;                   
                    }),
     );}
       InputDecoration textInputSearchDecoration([String lableText="", String hintText ="",]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green, style: BorderStyle.solid)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green.shade400, style: BorderStyle.solid)),
      suffixIcon: IconButton(
                    icon: Icon(
                         Icons.search,
                         color: Colors.black.withAlpha(120)),
                    onPressed: () {}),
     );
  }
}
class ThemeHelper1{
  InputDecoration textInputDecoration([String lableText="", String hintText =""]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      // fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    );
  }
  InputDecoration textInputPasswordDecoration([String lableText="", String hintText ="", bool _isObscure = false]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      // fillColor: Colors.white,
      filled: true,
       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {                     
                        _isObscure = !_isObscure;                   
                    }),
     );}
       InputDecoration textInputSearchDecoration([String lableText="", String hintText ="",]){
    return InputDecoration(
      labelText: lableText,
      hintText: hintText,
      // fillColor: Colors.white,
      filled: true,
       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green, style: BorderStyle.solid)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100.0), borderSide: BorderSide(color: Colors.green.shade400, style: BorderStyle.solid)),
      suffixIcon: IconButton(
                    icon: Icon(
                         Icons.search,
                         color: Colors.black.withAlpha(120)),
                    onPressed: () {}),
     );
  }
}