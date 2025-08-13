import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){

    },
      child: AnimatedContainer(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(.1),
                offset: Offset(0, 4),
                blurRadius: 10
            )
            ],
          ),
          duration: const Duration(milliseconds: 600),
          child: ListTile(
            leading: GestureDetector(
              onTap: (){

              },
              child: AnimatedContainer(duration: Duration(milliseconds: 600),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            title: Padding(padding: EdgeInsets.only(bottom: 5, top: 3),
              child: Text(
                "Task",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.lineThrough
                ),
              ),
            ),

            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description of Task ",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(padding: EdgeInsets.only(bottom: 10 , top: 10),
                      child: Text("Date" , style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),),)
                )
              ],
            ),
          )),
    );
  }
}
