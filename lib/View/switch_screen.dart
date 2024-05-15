import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_getx/provider/switc_provider.dart';
class SwitcScreen extends StatefulWidget {
  const SwitcScreen({super.key});

  @override
  State<SwitcScreen> createState() => _SwitcScreenState();
}

class _SwitcScreenState extends State<SwitcScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Consumer<SwitchProvider>(builder: (context, switcprovider, child) {
          return  Center(
            child: Column(
              children: [

                Switch(
                    value: switcprovider.isswitch,
                    onChanged:(value){
switcprovider.getSwitchValue(value);
                    }),

              ],
            ),
          );
        },)
      ),
    );
  }
}
