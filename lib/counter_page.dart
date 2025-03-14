import 'package:flutter/material.dart';
import 'package:flutter_project_1/counter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';
// import 'counter_provider.dart';

// class CounterPage extends StatefulWidget {
//   @override
//   CounterPageState createState() => CounterPageState();
    
  
// }

// class CounterPageState extends State<CounterPage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

// class CounterPage extends StatelessWidget {
class CounterPage extends ConsumerWidget{
  const CounterPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Center(
        // child: Consumer<CounterProvider>(
        //   builder: (context, CounterProvider, child){
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter Value : ", style: TextStyle(fontSize: 24)),
            Text(
              '$counter',
              style: TextStyle (fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed:() {
                // CounterProvider.increment();
                ref.read(counterProvider.notifier).increment();
          },
              child: Text("Increment Counter"),
              ),
              ElevatedButton(
                onPressed: (){
                // CounterProvider.decremenr();
                ref.read(counterProvider.notifier).decrement();
              }, 
              child: Text("Decrement"),
              ),
           ],
          ),
      ),
    );
  }
}