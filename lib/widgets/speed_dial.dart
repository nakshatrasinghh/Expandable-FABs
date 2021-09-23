import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialWidget extends StatefulWidget {
  const SpeedDialWidget({Key? key}) : super(key: key);

  @override
  _SpeedDialWidgetState createState() => _SpeedDialWidgetState();
}

class _SpeedDialWidgetState extends State<SpeedDialWidget> {
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
        spaceBetweenChildren: 8,
        spacing: 16,
        backgroundColor: Colors.black,
        overlayColor: Colors.grey.withOpacity(0.4),
        icon: Icons.share,
        closeManually: false,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.mail),
            backgroundColor: Colors.red,
            label: 'Mail',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Alert Dialog'),
                titlePadding: EdgeInsets.all(10),
                insetPadding: EdgeInsets.all(10),
                content: Text('Sent mail successfully'),
              ),
            ),
          ),
          SpeedDialChild(
            child: const Icon(Icons.copy),
            backgroundColor: Colors.green,
            label: 'Copy',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Alert Dialog'),
                titlePadding: EdgeInsets.all(10),
                insetPadding: EdgeInsets.all(10),
                content: Text('Copied successfully'),
              ),
            ),
          ),
          SpeedDialChild(
            child: const Icon(Icons.select_all_rounded),
            backgroundColor: Colors.blue,
            label: 'Select',
            onTap: () => showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Alert Dialog'),
                titlePadding: EdgeInsets.all(10),
                insetPadding: EdgeInsets.all(10),
                content: Text('All selected successfully'),
              ),
            ),
          )
        ]);
  }
}
