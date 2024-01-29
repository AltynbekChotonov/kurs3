import 'package:flutter/material.dart';

// import-деген экинчи беттеги даталарды таанытуу учун колдонулат

// void -деген эчнерсе кайтарбайт.
// main-деген бул функциянын аты.
// ()-main дин бир функция экенин тушундурот
// {}-main функцинын денеси ---- ичинде эмне болсо ошонун баары аткарылат
//

void main() {
  // a('kurs3');
  runApp(const MeninTirkemem());
}
// runApp - бул бир функция аны кашаларынан билдик ---тиркемени жургуз дегенди тушундурот
// const - бул constant-> бир гана жолу курулат --туруктуу десек болот
// MyApp -бул бир виджет жон эле соз
// a(String maani) {
//   print('maani');
// }

// class - dart учун жаны тушунукторду алып келуу (object)
// MeninTirkemem -бул Widget тен келген class (object)
class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});
// key - бул бир Widget ке ачкыч бергибиз келсе беребиз Widget тер кайсыл жерде жайгашкандыгын билуу учун
// super - деген атасына бериле турган пропертини  беруу учун колдонулат(child тан Parent) бетет
// extends-бул мурас беруу деп аталат Parent  class тан  child class ка  мурас берет
// StatelessWidget --- муну кийин айтып берем-==?
// @override, super.key --- object болуп саналат
  @override
//@override - деген атасындагы функцияны кайра жазуу
  Widget build(BuildContext context) {
// Widget - бул - Flutter ге тиешелуу баардык нерсе
// dart та баардык нерсе object болуп саналса --- Flutter де Widget болуп саналат
    //  -build -деген--build методунун  Widget тин кайтаруу тиби болот
    // build --бир функциянын аты
    // BuildContext context -деген Flutter de address деп коюшат

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
