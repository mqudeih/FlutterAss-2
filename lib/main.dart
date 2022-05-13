import 'package:flutter/material.dart';

void main() {
  runApp(const Ass2());
}

class Ass2 extends StatelessWidget {
  const Ass2({Key? key}) : super(key: key);

  static const appTitle = 'Assignment-2-(Ass2 Drawer)';

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       title: appTitle,
       home: MyDrawer(title: appTitle),
     );
   }
 }

class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {

        return Scaffold(
          appBar: AppBar(
            title: Text(title),backgroundColor: const Color.fromARGB(255, 172, 1, 202),),
          body: orientation==Orientation.portrait?buildContainer(): Row(
            children: [
              Expanded(child: buildListView()),
              Expanded(child: buildContainer()),
            ],
          ),

          drawer: orientation==Orientation.portrait?Drawer(
            child: Container(
              padding: const EdgeInsets.only(top: 120),
              child: buildListView(),
            ),):null
        );
      },
    );
  }

  Container buildContainer() {
    return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
        );
  }

  Container buildListView() {
    return Container(
      color: const Color.fromARGB(146, 255, 255, 255),

      child: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            children: const [
              Text("FIRST ELEMENT"),
                SizedBox(height: 30,),
              Text("SECOND ELEMENT"),
                SizedBox(height: 30,),
              Text("THIRD ELEMENT"),
                SizedBox(height: 30,),
              Text("FORTH ELEMENT"),
                SizedBox(height: 30,),
              Text("FIFTHE ELEMENT"),
            ],
        ),
    );
  }
}