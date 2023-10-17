import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
            Container(
              height: 50,
              width: 3,
              color: primaryColor,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.task),
                Text(AppLocalizations.of(context)!.task_description),
              ],
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.check))

          ],),
        ),
      ),
    );
  }
}
