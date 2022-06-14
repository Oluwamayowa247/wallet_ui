import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/utils/my_card.dart';
import 'package:wallet_ui/utils/my_icons.dart';
import 'package:wallet_ui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.monetization_on_outlined,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          //App Bar
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  //Plus button
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[400],
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Card View
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  //MyCard
                  MyCard(
                    balance: 1352.50,
                    cardNumber: 12385456,
                    expiryMonth: 10,
                    expiryYear: 22,
                    color: Colors.black,
                  ),

                  MyCard(
                    balance: 1452.70,
                    cardNumber: 12467545,
                    expiryMonth: 10,
                    expiryYear: 22,
                    color: Colors.blue[400],
                  ),
                  MyCard(
                    balance: 2552.80,
                    cardNumber: 11275456,
                    expiryMonth: 10,
                    expiryYear: 22,
                    color: Colors.deepPurple[700],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(activeDotColor: Colors.grey.shade700),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyIcon(
                        iconImagePath: 'lib/icons/wallet.png',
                        iconText: 'Send'),
                    MyIcon(
                        iconImagePath: 'lib/icons/credit_card.png',
                        iconText: 'Pay'),
                    MyIcon(
                        iconImagePath: 'lib/icons/bill.png', iconText: 'Bills'),
                  ]),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyListTile(
                      iconImagePath: 'lib/icons/bar_chart.png',
                      tileName: 'Statistics',
                      tileDesc: 'Payments and Income'),

                  MyListTile(
                      iconImagePath: 'lib/icons/transaction.png',
                      tileName: 'Transcation',
                      tileDesc: 'Transcation History'),
                  // MyListTile(
                  //     iconImagePath: iconImagePath,
                  //     tileName: tileName,
                  //     tileDesc: tileDesc)
                ],
              ),
            )
          ],

          //Column View: Statistics-transcation
        ),
      ),
    );
  }
}
