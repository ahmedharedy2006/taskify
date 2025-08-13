import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taskify/utils/app_colors.dart';
import 'package:taskify/utils/app_str.dart';
import 'package:taskify/utils/constants.dart';
import 'package:taskify/views/Home/components/fab.dart';
import 'package:taskify/views/Home/widgets/TaskWidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<int> testing = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: Fab(),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: double.infinity,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Padding(padding: const EdgeInsets.only(right: 16.0),
                    child: SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      value: 1 / 3,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.primary,

                      ),
                    ),

                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStr.mainTitle,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "1 of 3 Tasks",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10),
            child:
            Divider(
              thickness: 2,
              indent: 100,
            )
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 200,
              child: testing.isNotEmpty ? ListView.builder(
                itemCount: testing.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context , index){
                  return Dismissible(key: Key(index.toString()),
                      onDismissed: (_){

                      },
                      direction: DismissDirection.horizontal,
                      background: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.delete, color: Colors.grey,),
                          Text(AppStr.deleteTask,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16
                            ),
                          ),
                        ],
                      ),
                      child: TaskWidget());
                },
              ) : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInUp(
                  child: SizedBox(width: 200, height: 200,
                  child: Lottie.asset(lottieUrl , animate: testing.isNotEmpty ? false : true),
                  ),
                  ),
                  FadeInUp(from: 30 ,child:Text(AppStr.doneAllTask)
                  )
                ],
              )
            )
          ],
        ),


      ),
    );
  }
}


