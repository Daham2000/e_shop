import 'package:e_shop/util/assets.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Red x shoe",
      "picture": Assets.PRODUCTS_SHOES,
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Best z Formal",
      "picture": Assets.PRODUCTS_BEST_FORMAL,
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Black mart t-shirt",
      "picture": Assets.PRODUCTS_T_SHIRT_BLACK,
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "T-shirt in white",
      "picture": Assets.PRODUCTS_WHITE_T_SHIRT,
      "old_price": 2000,
      "price": 1500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          pro_name: productList[index]["name"],
          pro_picture: productList[index]["picture"],
          pro_old_price: productList[index]["old_price"],
          pro_price: productList[index]["price"],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final pro_name;
  final pro_picture;
  final pro_old_price;
  final pro_price;

  const SingleProd({
    this.pro_name,
    this.pro_picture,
    this.pro_old_price,
    this.pro_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: pro_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    pro_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$${pro_price}",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    "\$${pro_old_price}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                pro_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
