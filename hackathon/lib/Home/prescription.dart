import 'package:flutter/material.dart';

// ignore: camel_case_types
class prescription extends StatelessWidget {
  const prescription({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: _ElevatedButtonExample(),
      );
    }
}

class _ElevatedButtonExample extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('PRESCRIPTIONS'),
        ),
        body:Padding( 
          padding: const EdgeInsets.all(45),
        
        child :Column(
          children: [
            // An enabled button
            const Text("PRESCRIPTION UPLOADED: 22-10-2022"),
            const Padding(padding: EdgeInsetsDirectional.only(start: 100)),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80.0,
                        height: 40.0,
                      child: ElevatedButton(
                        child: const Text('Open'),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(padding: EdgeInsetsDirectional.only(start: 5)),
                    SizedBox(
                      width: 80.0,
                        height: 40.0,
                      child: ElevatedButton(
                       child:const Text('Delete'),
                       onPressed: () {},
                       ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsetsDirectional.only(start: 200)),
            const Text("PRESCRIPTION UPLOADED: 15-10-2022"),
            const Padding(padding: EdgeInsetsDirectional.only(start: 200)),
            Container(
              margin :const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                       width: 80.0,
                        height: 40.0,
                      child: ElevatedButton(
                        child: const Text('Open'),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(padding: EdgeInsetsDirectional.only(start: 5)),
                    SizedBox(
                      width: 80.0,
                        height: 40.0,
                      child: ElevatedButton(
                       child:const Text('Delete'),
                       onPressed: () {},
                       ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ), 
        
        
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('+'),
          onPressed: () {
            // ignore: avoid_print
            print('FloatingActionButton clicked');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    }
  }