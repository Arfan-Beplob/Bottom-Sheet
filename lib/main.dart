import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Open Button Sheet"),
          onPressed: (){
            showModalBottomSheet(
              // isScrollControlled: true,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30)
                )
              ),
                   context: context, builder: (context)=>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
               // mainAxisSize: MainAxisSize.min,
                children: [
                  const FlutterLogo(size: 50,),
                  const Text("The bottom sheet is a widget used to\n show the content on a screen",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                      onPressed: () { Navigator.pop(context); },
                      child: const Text("Close Bottom Sheet")),
                ],
              ),
            )
            );
          },
        ),
      ),
    );
  }
}
