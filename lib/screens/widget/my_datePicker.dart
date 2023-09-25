import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDatePicker();
}

class _MyDatePicker extends State<MyDatePicker> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMM/dd/yyyy').format(date);
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: date);

              if (newDate == null) return;
              setState(() => date = newDate);
            },
            child: Text(
              "Select Date",
              style: TextStyle(color: Colors.deepOrange),
            )),
        Text(formattedDate,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
            )),
        SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}
