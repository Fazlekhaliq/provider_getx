import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_getx/provider/increment_provider.dart';

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({super.key});

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 150,left: 50),

        child:Consumer<IncrementProvider>(builder: (context, incrementProvider, child) {
          return  Column(
            children: [
              Text(incrementProvider.n.toString()),
//Text('$n'),

              ElevatedButton(onPressed: (){
                incrementProvider.Increment();
                //Increment();
              },
                  child: Text('add')),


              ElevatedButton(onPressed: (){
                incrementProvider.Decrement();
                //Increment();
              },
                  child: Text('decrease')),

            ],
          );
        },)
      ),
    );
  }
}
