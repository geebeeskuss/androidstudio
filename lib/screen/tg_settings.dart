import 'package:flutter/material.dart';

class TelegramSettings  extends StatelessWidget {
  const TelegramSettings({Key?key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telegram settings screen'),
      ),
      backgroundColor: Color(0xFFF1F0F6),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Icon(Icons.face, size: 200),
            SizedBox(height: 50),
            Text('Name Surname',style: TextStyle(fontSize: 40)),
            SizedBox(height: 50),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.bookmark,size: 60,color: Colors.blue),
                      Expanded(child: Text('Saved messages')),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey),
                    ],
                  ),
                  Divider(color: Colors.grey),
                  Row(
                    children: [
                      Icon(Icons.call,size: 60,color: Colors.green),
                      Expanded(child: Text('Recent calls')),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey),
                    ],
                  ),
                  Divider(color: Colors.grey),
                  Row(
                    children: [
                      Icon(Icons.devices_outlined,size: 60,color: Colors.orange),
                      Expanded(child: Text('Deviced')),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );


  }
}
