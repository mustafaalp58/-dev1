import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool alpingYaziGoster = false;
  bool aciklamaGoster = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mustafa Alp Şahin'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Ayarlar simgesine tıkladığınızda yapılması gereken işlemleri burada tanımlayabilirsiniz.
                // Örneğin, bir ayarlar sayfasına yönlendirebilirsiniz.
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Büyüteç simgesine tıkladığınızda yapılması gereken işlemleri burada tanımlayabilirsiniz.
                // Örneğin, arama işlemi başlatılabilir.
              },
            ),
          ],
        ),
        drawer: Drawer(
          // Drawer ekledik
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menü',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Açıklama Göster'),
                onTap: () {
                  setState(() {
                    aciklamaGoster = true;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Açıklama Gizle'),
                onTap: () {
                  setState(() {
                    aciklamaGoster = false;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Yeşil + işaretine tıkladığınızda yapılması gereken işlemleri burada tanımlayabilirsiniz.
            // Örneğin, yeni bir şey eklemek için bir işlem başlatabilirsiniz.
          },
          child:
              Icon(Icons.add, color: Colors.white), // Yeşil + işareti ekledik
          backgroundColor: Colors.green, // Arka plan rengini yeşil yaptık
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        alpingYaziGoster = !alpingYaziGoster;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Düşünce'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        alpingYaziGoster = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Düşünceyi sil'),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 65,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Alp'),
                  Text('Alp'),
                ],
              ),
            ),
            if (alpingYaziGoster)
              Positioned(
                top: 250,
                left: 80,
                right: 0,
                child: Text(
                  'ALP Çok Yorgun',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            Positioned(
              top: 10,
              left: 20,
              right: 0,
              child: Text(
                'Sevgi ❤️ ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            if (aciklamaGoster)
              Positioned(
                top: 300,
                left: 60,
                right: 0,
                child: Text(
                  'Açıklama: yazısını ben böyle yapmak istedim ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            Positioned(
              bottom: 20,
              left: 20,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    aciklamaGoster = !aciklamaGoster;
                  });
                },
                child:
                    Text(aciklamaGoster ? 'Açıklama Gizle' : 'Açıklama Göster'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
