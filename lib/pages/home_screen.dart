import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter card')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //4 childs  in a row
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      decoration: BoxDecoration(
                      color: hexToColor('#59191F'),
                      borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text('Strawberry Pavlova', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Fila 2
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: hexToColor('#59191F'),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: const Center(
                        child: 
                        Text('Pavlova is a meringue-based dessert named the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whispped cream.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto Serif'
                          ),
                        ),)),
                    ),
                  
                  // Fila 3
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                       decoration: BoxDecoration(
                        color: hexToColor('#59191F'),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('* * * * *',style: TextStyle(color: CupertinoColors.inactiveGray),),
                          Text('170 Reviews',style: TextStyle(color: Colors.white),),
                        ],),
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Fila 4
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                       decoration: BoxDecoration(
                        color: hexToColor('#59191F'),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: const Center(
                        child: Text('Coming soon',
                        style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),

            // Second column 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 250,
                      child: Image.asset('assets/images/pavlova2.jpg', fit: BoxFit.cover), // Use appropriate color(s)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

