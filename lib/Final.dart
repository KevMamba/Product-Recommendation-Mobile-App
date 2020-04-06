import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  bool maggi,
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
      vegpuff;
  Final(
      this.maggi,
      this.biscuit,
      this.choco,
      this.coffee,
      this.cupcake,
      this.juice,
      this.noodles,
      this.samosa,
      this.sandwich,
      this.burger,
      this.tea,
      this.vegpuff,
      {Key key})
      : super(key: key);

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  List<String> process() {
    bool maggi = widget.maggi;
    bool biscuit = widget.biscuit;
    bool choco = widget.choco;
    bool coffee = widget.coffee;
    bool cupcake = widget.cupcake;
    bool juice = widget.juice;
    bool noodles = widget.noodles;
    bool samosa = widget.samosa;
    bool sandwich = widget.sandwich;
    bool burger = widget.burger;
    bool tea = widget.tea;
    bool vegpuff = widget.vegpuff;
    List<String> selected = [];
    if (maggi == false) {
      selected.add('Maggi');
    }
    if (biscuit == false) {
      selected.add('Biscuits');
    }
    if (choco == false) {
      selected.add('Chocolates');
    }
    if (coffee == false) {
      selected.add('Coffee');
    }
    if (cupcake == false) {
      selected.add('Cupcake');
    }
    if (juice == false) {
      selected.add('Juice');
    }
    if (noodles == false) {
      selected.add('Noodles');
    }
    if (samosa == false) {
      selected.add('Samosa');
    }
    if (sandwich == false) {
      selected.add('Sandwich');
    }
    if (burger == false) {
      selected.add('Burger');
    }
    if (tea == false) {
      selected.add('Tea');
    }
    if (vegpuff == false) {
      selected.add('Vegetable Puff');
    }
    print(selected);
    print(selected.length);
    List<String> shop1 = ['Maggi', 'Chocolates', 'Cupcake'];
    List<String> shop2 = ['Noodles', 'Tea', 'Sandwich'];
    for (int i = 0; i < selected.length; i++) {
      for (int j = 0; j <= 2; j++) {
        if (selected[i] == shop1[j] || selected[i] == shop2[j]) {
          selected.removeAt(i);
        }
      }
    }
    return selected;
  }

  Widget build(BuildContext context) {
    List<String> recommended = [];
    recommended = process();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
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
                  'Recommendations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
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
                    'Items we recommend you sell:',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 2000.0,
                      child: new ListView.builder(
                        itemCount: recommended.length,
                        itemBuilder: (context, position) {
                          return ListTile(
                            title: Center(
                              child: Text(recommended[position]),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
