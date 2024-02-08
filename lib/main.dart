import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jericho Gwapo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'もしのかるほ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Builder(
            builder: (innerContext) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(innerContext).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Builder(
        builder: (innerContext) => Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'もしのかるほ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.close),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(innerContext);
                            },
                          )
                        ],
                      )
                      // child: Text('もしのかるほ',
                      //     style: TextStyle(
                      //         color: Colors.white, fontWeight: FontWeight.bold))),
                      )),
              ListTile(
                title: Text('制作ストーリー',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: Text('ほじぬから',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              ListTile(
                title: Text('復習する',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              ListTile(
                title: Text('LINEスタンプ購入',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              ListTile(
                title: Text('カードの説明',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
            ],
          ),
        ),
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
              style: Theme.of(context).textTheme.headline6,
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
