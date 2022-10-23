import 'package:flutter/material.dart';
import 'package:hackathon/utils/homeroutes.dart';
// ignore: unused_import
import '../auth/components/sign_up_form.dart';

// ignore: camel_case_types
class contacts extends StatefulWidget {
  const contacts({super.key});

  @override
  State<contacts> createState() => _contactsState();
}

// ignore: camel_case_types
class _contactsState extends State<contacts> {
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context)
  {
    if(_formkey.currentState!.validate())
      {
        Navigator.pushNamed(context, myroutes.homeroute);
      } 
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Enter Contact 1",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                      decoration: const InputDecoration(
                        hintText: "CONTACT NAME",
                        labelText: "ENTER CONTACT NAME",
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Username cannot be empty";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: "+9999999999",
                        labelText: "ENTER CONTACT NUMBER",
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Number cannot be empty";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: "CONTACT RELATION",
                        labelText: "ENTER RELATION",
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Relation cannot be empty";
                        }
                        else
                        {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                    height: 20,
                  ),
                  
              
                  ElevatedButton(
                  onPressed: ()=>movetohome(context),
                  // ignore: prefer_const_constructors
                  style: TextButton.styleFrom(),
                  child: const Text("LOGIN")
                  )
              
                  ], 
                    ),
                  ),
                )
              ],
          ),
        ),
      ),
    );
    
    
  }
}