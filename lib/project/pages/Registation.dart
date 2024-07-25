import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegistationState();
}

class _RegistationState extends State<Register> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rePassword = TextEditingController();

  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registation",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _firstName,
                  decoration: InputDecoration(
                    label: Text("First Name"),
                    hintText: "First Name",
                    // hintStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    // suffix: Icon(Icons.search),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter first name";
                    }
                  },
                ),

                SizedBox(height: 30,),


                TextFormField(
                  controller: _lastName,
                  decoration: InputDecoration(
                  label: Text("Last Name"),
                  hintText: "Last Name",
                    // hintStyle: TextStyle(color: Colors.purple)
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    // suffix: Icon(Icons.search),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter last name";
                    }
                  },
                ),
                SizedBox(height: 30,),

                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter your Email",
                     hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    suffix: Icon(Icons.email_outlined),
                    // suffixIcon: Icon(Icons.abc),
                    // prefix: Icon(Icons.abc),
                    // prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter your Email";
                    }
                    if(!value.contains("@")){
                      return "Enter correct email";
                    }
                  },
                ),

                SizedBox(height: 20,),


                TextFormField(
                  controller: _password,
                  obscureText: isObs,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your Password",
                     hintStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    suffix: IconButton(
                      onPressed: (){
                        isObs = !isObs;
                        setState(() {

                        });
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    suffixIcon: Icon(Icons.abc),
                    prefix: Icon(Icons.abc),
                    prefixIcon: Icon(Icons.abc),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter Password";
                    }
                    if(value.length <8){
                      return "Password must be at least 8 digits/chara";
                    }
                  },
                ),

                SizedBox(height: 30,),

                TextFormField(
                  controller: _rePassword,
                  obscureText: isObs,
                  decoration: InputDecoration(
                    label: Text("Re enter your Password"),
                    hintText: "Re enter your password",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    suffix: IconButton(
                      onPressed: (){
                        setState(() {
                          isObs = !isObs;
                        });
                      },
                      icon: Icon(Icons.visibility),
                    ),
                    suffixIcon: Icon(Icons.abc),
                      prefix: Icon(Icons.abc),
                    prefixIcon: Icon(Icons.abc)
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter password";
                    }
                    if(value != _password){
                      return "Password does not match";
                    }
                  },
                ),

                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width *0.8,
                  color: Colors.blue,
                  onPressed: (){
                    _formKey.currentState!.validate();
                  },
                  child: Text("Register Now!"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
