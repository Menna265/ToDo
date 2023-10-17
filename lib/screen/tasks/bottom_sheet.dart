import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do/models/task_model.dart';
import 'package:to_do/shared/firebase/firebase_functions.dart';
import 'package:to_do/shared/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  var title = TextEditingController();

  var discreption = TextEditingController();
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppLocalizations.of(context)!.add_new_task,
            textAlign: TextAlign.center,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: title,
                decoration: InputDecoration(
                  label: Text(AppLocalizations.of(context)!.enter_task),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: primaryColor, width: 2)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: discreption,
                decoration: InputDecoration(
                  label: Text(AppLocalizations.of(context)!.enter_desc),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: primaryColor, width: 2)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(AppLocalizations.of(context)!.select_date,
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          InkWell(
              onTap: () {
                selectDate(context);
              },
              child: Text(
                selectedDate.toString().substring(0, 11),
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                TaskModel taskModel = TaskModel(
                    title: title.text,
                    description: discreption.text,
                    date: selectedDate.millisecondsSinceEpoch);
                FirebaseFunctions.addTask(taskModel);
              },
              child: Text(AppLocalizations.of(context)!.add_task))
        ],
      ),
    );
  }

  void selectDate(BuildContext context) async {
    DateTime? choosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (choosenDate == null) {
      return;
    }
    selectedDate = choosenDate;
    setState(() {});
  }
}
