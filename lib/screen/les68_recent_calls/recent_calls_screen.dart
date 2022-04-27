import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screen/les68_recent_calls/call_card.dart';

class RecentCalls extends StatefulWidget {
  const RecentCalls({Key? key}) : super(key: key);

  @override
  State<RecentCalls> createState() => _RecentCallsState();
}

class _RecentCallsState extends State<RecentCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(title: const Text('Журнал звонков', style: TextStyle(color: Colors.black),),
        backgroundColor: const Color(0xffF9F9FB),

        systemOverlayStyle: const SystemUiOverlayStyle(

        statusBarColor: Color(0xffF9F9FB),

        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,) ),
          body: ListView.separated(
            itemBuilder: (_, int index) => const CallCard(),
            separatorBuilder: (_, int index) => const Padding(
              padding: EdgeInsets.only(left: 42.0),
              child: Divider(thickness: 0.5,height: 1,),
        ),
        itemCount: 300,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

