import 'package:flutter/material.dart';

// ignore: camel_case_types
class medication extends StatelessWidget {
  const medication({super.key});

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
          title: const Text('MEDICATION'),
        ),
        body:Padding( 
          padding: const EdgeInsets.all(45),
         
        child :Column(
          children: [
            // An enabled button
            ElevatedButton(
              child: const Text('choose prescription from existing files'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 100,
            ),
            // A disabled button
            ElevatedButton(
                 child:const Text('Search medicines from near by medical shop'),
                 onPressed: () {},
                 ),
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Order'),
          onPressed: () {
            // ignore: avoid_print
            print('FloatingActionButton clicked');
          },
        ),
      );
    }
  }