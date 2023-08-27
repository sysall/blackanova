import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:f_datetimerangepicker/f_datetimerangepicker.dart';

void main() {
  runApp(MaterialApp(home: Booking()));
}

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  late DateTime now;
  static const TIME_SLOT = {
    '09:00 - 11:00',
    '11:00 - 13:00',
    '15:00 - 17:00',
    '17:00 - 19:00',
    '19:00 - 21:00',
    '21:00 - 23-00'
  };
  int selectedCardIndex = -1;
  String selectedService = '';
  int isSelected = -1;
  final List<String> services = ['Tresse 1', 'Tresse 2', 'Tresse 3'];


  @override
  void initState() {
    super.initState();
    now = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          color: Color(0xFF008577),
          padding: EdgeInsets.only(top: 40.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(DateFormat.MMMM().format(now), style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 20)),
                      Text('${now.day}',style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),),
                      Text(DateFormat.EEEE().format(now), style: GoogleFonts.robotoMono(color: Colors.white54,fontSize: 20))
                    ],
                  ),
                ),
              )),
              GestureDetector(
                onTap: () => {
                  DateTimeRangePicker(
                    startText: "From",
                    endText: "To",
                    doneText: "Yes",
                    cancelText: "Cancel",
                    interval: 5,
                    initialStartTime: DateTime.now(),
                    initialEndTime: DateTime.now().add(Duration(days: 20)),
                    mode: DateTimeRangePickerMode.dateAndTime,
                    minimumTime: DateTime.now().subtract(Duration(days: 5)),
                    maximumTime: DateTime.now().add(Duration(days: 25)),
                    use24hFormat: true,
                    onConfirm: (start, end) {
                      print(start);
                      print(end);
                      setState(() {
                        now = start;
                      });
                    }).showPicker(context)
                },
                child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.calendar_today,color: Colors.white,),
                ),
              ),)
            ],
          ),
        ),
        Expanded(
            child: GridView.builder(
                itemCount: TIME_SLOT.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    setState(() {
                      // Update the selected index here
                      selectedCardIndex = index;
                      isSelected = selectedCardIndex;
                      print(TIME_SLOT.elementAt(selectedCardIndex));
                    });
                  },
                  child: Card(
                    color: selectedCardIndex == index ? Colors.blue : Colors.white,
                    child: GridTile(
                      header: selectedCardIndex == index ? Icon(Icons.check) : null,
                        child:Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(TIME_SLOT.elementAt(index)),
                              //const Text('Available')
                              if (selectedCardIndex == index)
                                Text('Selected')
                              else
                                Text('Available'),
                            ],
                          ),
                        )),
                  ),
                ))),
        if (isSelected>0)
          Expanded(
            child: Column(
              children: [
                Text('List of Services:'),
                for (final service in services)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedService = service;
                      print(selectedService);// Update the selected service
                    });
                  },
                  child: Text(service),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
