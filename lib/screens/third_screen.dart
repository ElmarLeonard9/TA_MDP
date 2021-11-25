import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreen createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/prof.png",
                          width: 150,
                          height: 150,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Elmar Leonard',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '21120119140145',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(1, 180, 228, 1)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'elmarleonard77@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(1, 180, 228, 1)),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
