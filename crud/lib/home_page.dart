import 'package:flutter/material.dart';

/*

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('Fluterando ${controller.value}')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        
        onPressed: () {
          controller.increment();
        }
      ),
    );
  }
}

*/

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('Fluterando $counter')),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
