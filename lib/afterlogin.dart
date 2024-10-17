import 'package:flutter/material.dart';
import 'page2.dart'; // Pastikan nama file sesuai dengan nama file yang Anda miliki

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(), // Pastikan nama kelas di sini sama dengan definisi di bawah
    ));

class Home extends StatelessWidget { // Pastikan nama kelas menjadi Home
  final String name;
  final String role;
  final String school;
  final String description;

  // Constructor dengan parameter yang dibutuhkan
  const Home({
    Key? key,
    required this.name,
    required this.role,
    required this.school,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(171, 182, 172, 0.5),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/me.jpg'),
                      ),
                      Text(
                        "$name",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "$school",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                      Text(
                        "$role",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                      Text(
                        "$description",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white54),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: Text(
                          'See More',
                          style: TextStyle(fontSize: 12, color: Colors.greenAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
