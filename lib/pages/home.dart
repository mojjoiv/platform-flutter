import 'package:ecommerceplatform/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, burger = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the content in a SingleChildScrollView
        child: Container(
          margin: EdgeInsets.only(
            top: 50.0,
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello, Dalton", style: AppWidget.boldTextStyle()),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text("Delicious Food", style: AppWidget.HeadlineTextStyle()),
              Text("Discover the world of food",
                  style: AppWidget.LightTextStyle()),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem(),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    foodCard("images/salad2.png", "veggie taco hash",
                        "Fresh and Ready", "Kshs50"),
                    SizedBox(height: 15.0),
                    foodCard("images/salad2.png", "Mix Veg Salad", "Spicy",
                        "Kshs75"),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              foodDetailCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodCard(
      String imagePath, String title, String subtitle, String price) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Text(title, style: AppWidget.semiBoldTextStyle()),
              SizedBox(height: 5.0),
              Text(subtitle, style: AppWidget.LightTextStyle()),
              SizedBox(height: 5.0),
              Text(price, style: AppWidget.semiBoldTextStyle()),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodDetailCard() {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/salad2.png",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 20.0),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text("mediterranean chickpea salad",
                        style: AppWidget.semiBoldTextStyle()),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text("Honey Goat cheese",
                        style: AppWidget.LightTextStyle()),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child:
                        Text("Kshs100", style: AppWidget.semiBoldTextStyle()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        itemIcon("images/ice-cream.png", icecream, () {
          setState(() {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
          });
        }),
        itemIcon("images/pizza.png", pizza, () {
          setState(() {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
          });
        }),
        itemIcon("images/salad.png", salad, () {
          setState(() {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
          });
        }),
        itemIcon("images/burger.png", burger, () {
          setState(() {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
          });
        }),
      ],
    );
  }

  Widget itemIcon(String imagePath, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(8),
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
            color: isActive ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
