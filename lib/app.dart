import 'package:calcupiano/ui/piano.dart';
import 'package:flutter/material.dart';
import 'package:rettulf/rettulf.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    final size = context.mediaQuery.size;
    final halfHeight = Size(size.width, size.height / 2);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext ctx) {
    if (ctx.isPortrait) {
      return [
        const Text(
          'You have pushed the button this many times:',
        ).expanded(),
        // Why doesn't the constraint apply on this?
        const PianoKeyboard().expanded(),
      ].column(
        mas: MainAxisSize.min,
        maa: MainAxisAlignment.center,
      );
    } else {
      return [
        const Text(
          'You have pushed the button this many times:',
        ).expanded(),
        // Why doesn't the constraint apply on this?
        const PianoKeyboard().expanded(),
      ].row(
        mas: MainAxisSize.min,
        maa: MainAxisAlignment.center,
      );
    }
  }
}