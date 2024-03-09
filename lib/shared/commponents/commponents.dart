import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
   double width =double.infinity,
   Color background=Colors.blue,
  required VoidCallback function,
  required String text,
  bool isUpperCase = true,
}) =>
    Container(
     width: width,
    child: MaterialButton(
      onPressed: function,
      child: Text(
          isUpperCase? text.toUpperCase() : text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),

    ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0,),
        color: background,
      ),
    );

Widget defaultFormField({
  VoidCallback? onTap,
  bool isClickable = true,
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?)? validate,
  required String label,
  required IconData prefix,

  bool isPassword = false,
  IconData? suffix,
   VoidCallback? suffixPressed,
})

=> TextFormField(
    controller: controller,
    keyboardType: type,
    enabled: isClickable,
    onFieldSubmitted: (value){
      print(value);
    },
    onChanged:  (value){
      print(value);},
    onTap: onTap,
    validator: validate,
    obscureText: isPassword,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(
        prefix,
      ),
      suffixIcon: suffix != null ? IconButton(
        onPressed: suffixPressed,
        icon: Icon(
          suffix,
        ),
      ) : null,

      //hintText:'email address',
      border: OutlineInputBorder(),
    ),
);

Widget buildTaskItem(Map model) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 35.0,
        child: Text(
          '${model['time']}',
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${model['title']}',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${model['date']}',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);