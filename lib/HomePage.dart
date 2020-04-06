import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmproject/Final.dart';
//import 'Result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  bool maggi = true;
  bool biscuit = true;
  bool choco = true;
  bool coffee = true;
  bool cupcake = true;
  bool juice = true;
  bool noodles = true;
  bool samosa = true;
  bool sandwich = true;
  bool burger = true;
  bool tea = true;
  bool vegpuff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      floatingActionButton: new FloatingActionButton(
        child: const Icon(Icons.send),
        backgroundColor: Colors.red[900],
        onPressed: () {
          //Navigator.pushNamed(context, '/result');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Final(
                  maggi,
                  biscuit,
                  choco,
                  coffee,
                  cupcake,
                  juice,
                  noodles,
                  samosa,
                  sandwich,
                  burger,
                  tea,
                  vegpuff),
            ),
          );
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Product Recommendation')),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 65,
                  ),
                ),
              ),
              Divider(
                color: Colors.red[300],
                thickness: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Choose products you\'d like in your shop',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: maggi ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      maggi = !maggi;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Maggi.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: biscuit ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      biscuit = !biscuit;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Biscuits.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: choco ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      choco = !choco;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Chocolates.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: coffee ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      coffee = !coffee;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Coffee.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: cupcake ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      cupcake = !cupcake;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Cupcake.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: juice ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      juice = !juice;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Juice.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: noodles ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      noodles = !noodles;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Noodles.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: samosa ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      samosa = !samosa;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Samosa.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: sandwich ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      sandwich = !sandwich;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Sandwich.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: burger ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      burger = !burger;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Burger.png'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: tea ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      tea = !tea;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Tea.jpg'),
                ),
              ),
              Container(
                child: FlatButton(
                  //onPressed: () => pressAttention = !pressAttention,
                  color: vegpuff ? Colors.white : Colors.redAccent[100],
                  onPressed: () {
                    setState(() {
                      i++;
                      vegpuff = !vegpuff;
                    });
                  },
                  padding: EdgeInsets.all(50.0),
                  child: Image.asset('assets/Vegetable Puff.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
