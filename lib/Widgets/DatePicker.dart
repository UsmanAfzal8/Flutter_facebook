import 'package:flutter/material.dart';

class Customdatepicker extends StatefulWidget {
  const Customdatepicker({Key? key}) : super(key: key);

  @override
  State<Customdatepicker> createState() => _CustomdatepickerState();
}

class _CustomdatepickerState extends State<Customdatepicker> {
  List<int> _daylist = [];
  List<String> _monthlist = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List<int> _yearlist = [];
  int dropdownValue = 1;
  String monthdropdown = 'Jan';
  int yeardropdownValue = 2000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Listupdates();
    updatedate();
  }

  bool isLeapYear(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  void updatedate() {
    if (monthdropdown == 'Apr' ||
        monthdropdown == 'Jun' ||
        monthdropdown == 'Sep' ||
        monthdropdown == 'Nov') {
      if (dropdownValue == 31) {
        setState(() {
          dropdownValue = 30;
        });
      }
    } else if (monthdropdown == 'Feb') {
      if (isLeapYear(yeardropdownValue) == true) {
        if (dropdownValue > 29) {
          setState(() {
            dropdownValue = 29;
          });
        }
      } else {
        if (dropdownValue > 28) {
          setState(() {
            dropdownValue = 28;
          });
        }
      }
    }
  }

  void Listupdates() {
    for (int i = 1; i < 32; i++) {
      _daylist.add(i);
    }

    for (int k = 1900; k <= 2016; k++) {
      _yearlist.add(k);
    }
  }

  void checklist() {
    _monthlist.forEach((element) => print(element));
  }

  late DateTime _dateTime;
  bool _isdateset = false;
  void selectdate() {
    setState(() {
      _isdateset = false;
    });
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1947),
            lastDate: DateTime.now())
        .then((value) {
      setState(() {
        _dateTime = value!;
        _isdateset = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date of birth?',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 60,
              child: DropdownButtonFormField<int>(
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.black,

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                value: dropdownValue,
                //icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                //style: const TextStyle(color: Colors.deepPurple),

                onChanged: (int? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: _daylist.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 80,
              height: 60,
              child: DropdownButtonFormField<String>(
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.black,

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                value: monthdropdown,
                //icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                //style: const TextStyle(color: Colors.deepPurple),

                onChanged: (String? newValue) {
                  setState(() {
                    monthdropdown = newValue!;
                  });

                  updatedate();
                },
                items: _monthlist.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 90,
              height: 60,
              child: DropdownButtonFormField<int>(
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.black,

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                value: yeardropdownValue,
                //icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                //style: const TextStyle(color: Colors.deepPurple),

                onChanged: (int? newValue) {
                  setState(() {
                    yeardropdownValue = newValue!;
                  });

                  updatedate();
                },
                items: _yearlist.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
