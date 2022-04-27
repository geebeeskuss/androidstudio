import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatefulWidget {
  const CallCard({Key? key}) : super(key: key);

  @override
  State<CallCard> createState() => _CallCardState();
}

class _CallCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14,top: 15,right: 14,bottom: 31),
            child: const Icon(
                  Icons.phone_forwarded,
                  color: Color(0xffC4C4C6),
                  size: 14,
                ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('+0 (000) 000-00-00',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                Text('Доп. информация', style: TextStyle(color: Colors.black38, fontSize: 15)),
              ],
            ),
          ),
          const Text('Дата', style: TextStyle(color: Colors.black38, fontSize: 15)),
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/info'),
              padding: const EdgeInsets.only(right: 21,left: 8),
              icon: const Icon(
                Icons.info_outlined,
                color: Colors.lightBlue,
              )),
        ],
      ),
    );
  }
}