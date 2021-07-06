import 'package:flutter/material.dart';
import 'package:nom_package_projet/stat_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // let's start by adding the data for the images
  String avatarUrl = "assets/img/profils/me.png";

  List<String> imagePost = [
    "assets/img/galerie/square/DSC_0069.png",
    "assets/img/galerie/square/DSC_0132.png",
    "assets/img/galerie/square/DSC_0219.png",
    "assets/img/galerie/square/DSC_0223-2.png",
    "assets/img/galerie/square/DSC_0260-2.png",
    "assets/img/galerie/square/DSC_0270.png",
    "assets/img/galerie/square/DSC_0316.png",
    "assets/img/galerie/square/DSC_0361-2.png",
    "assets/img/galerie/square/DSC_0453.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text("Profile Page",
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 56,
                backgroundImage: AssetImage(avatarUrl),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "LAFORTUNE Jean-Luc",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "@BluNay",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  statWidget("Post", "9"),
                  statWidget("Followers", "74"),
                  statWidget("Follow", "34"),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Follow"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Message",
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: Icon(Icons.send_rounded),
                    // Icon(Icons.send_outlined),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 18.0,
                  thickness: 0.6,
                  color: Colors.black87,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: imagePost.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(imagePost[index]),
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
