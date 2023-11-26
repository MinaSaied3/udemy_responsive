import 'package:flutter/material.dart';
//reusable components


Widget DeafaultButton({
  //the common use for components. could be also required.
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radious = 10.0,
  required VoidCallback function,
  required String text,
}) => Container(
  //if you made a BoxDecoration put the botton color inside the BoxDecoration for Avoiding errors
  width: width,
  height: 40.0,
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
    borderRadius: BorderRadius.circular(radious),
    color: background,
  ),
);




Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  //required Function(String)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  required String? Function(dynamic value) validator,
  bool isPassword = false,
  Null Function()? suffixPressed,
  //Function? suffixPressed,
})=> TextFormField(
  controller: controller,
  obscureText: isPassword,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  /*(String value) {
    print(value);
  },*/
  onChanged: onChange,
  /*(String value) {
    print(value);
  },*/
  validator: validator,
      /*(value) {
    if(value!.isEmpty)
    {
      return 'email address must not be empty ';
    }
    return null;
  },*/
  decoration: InputDecoration(
    // hintText: 'Email Adress',
    // بتخلي الكلمة تختفي بعد ما بكتب في البوكس
    labelText: label,
    prefixIcon: Icon(prefix,),
    /*suffixIcon: suffix !=null ? IconButton(
      onPressed:suffixPressed,
        icon: Icon(
          suffix,)) : null,*/
    suffixIcon: IconButton(
        onPressed:suffixPressed,
        icon: Icon(
      suffix,)),
    border: OutlineInputBorder(),
    //بتعمل بوكس في المكان بتاع التكست
  ),
);

