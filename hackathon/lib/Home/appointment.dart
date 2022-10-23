import 'package:flutter/material.dart';

// ignore: camel_case_types
class appointment extends StatelessWidget {
  const appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("APPOINTMENTS"),
      ),
      body:Padding( 
          padding: const EdgeInsets.all(45),
         
        child :Column(
          children: [
            // An enabled button
      
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                    child: const Text('REQUEST STATUS'),
                    onPressed: () {},
                  ),
                ),
                const Padding(padding: EdgeInsetsDirectional.only(start: 10)),
            // A disabled button
            SizedBox(
              height: 70,
                  width: 100,
              child: ElevatedButton(
                   child:const Text('DOCTOR DETAILS'),
                   onPressed: () {},
                   ),
            ),
              ],
            ),
            SizedBox(
              height: 70,
                  width: 100,
              child: ElevatedButton(
                   child:const Text('DOCTOR DETAILS'),
                   onPressed: () {},
                   ),
            ),

            
          ],
        ),
        ),
    );
  }
}