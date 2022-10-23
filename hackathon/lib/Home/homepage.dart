import 'package:flutter/material.dart';
import 'package:hackathon/Home/appointment.dart';
import 'package:hackathon/Home/drawer.dart';
import 'package:hackathon/Home/events.dart';
import 'package:hackathon/Home/health.dart';
import 'package:hackathon/Home/medication.dart';
import 'package:hackathon/Home/prescription.dart';
import 'package:hackathon/screens/contacts/emergency.dart';
import 'package:hackathon/utils/homeroutes.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  movetoemergency(BuildContext context)
  {
    if(_formkey.currentState!.validate())
      {
        Navigator.pushNamed(context, myroutes.emergency);
      } 
  }
  
  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAMAJA SEVA"),
      ),
      body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () 
          {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const appointment()),
  );
          },
          child: SizedBox(
                  width: 130,
                  height: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("APPOINTMENT REQUEST"), Icon(Icons.person)],
                  ),
          ),
        ),
        ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const prescription()),
  );
                  },
                  child: SizedBox(
                    width: 130,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("MY PRESCRIPTIONS"), Icon(Icons.article_outlined)],
                    ),
                  )),   
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const events()),
  );
            },
            child: SizedBox(
                    width: 130,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("EVENTS AND AWARENESS"), Icon(Icons.document_scanner)],
                    ),
            ),
          ),
          ElevatedButton(
                    onPressed: ()
                    {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const medication()),
  );
                    },
                    child: SizedBox(
                      width: 130,
                      height: 85,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text("MEDICATION"), Icon(Icons.access_time)],
                      ),
                    )),   
        ],
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () 
            {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const health()),
  );
            },
            child: SizedBox(
                    width: 130,
                    height: 85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("HEALTH TIPS"), Icon(Icons.h_plus_mobiledata_sharp)],
                    ),
            ),
          ),
        ] 
    )

    


                ],
              ),
            )),
      floatingActionButton: FloatingActionButton(
        heroTag: 'uniqueTag',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const emergency(),
            ));
        },
        tooltip: "SOS",
        child: const Text("SOS")

),
drawer: const dropdown(),
    
    );
    
    }
  }
