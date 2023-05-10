import 'package:flutter/material.dart';
import 'package:grocery_shop_app/models/cart_model.dart';
import 'package:grocery_shop_app/pages/cartpage.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.black,
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CartPage();
          },)),
          child: const Icon(Icons.shopping_bag,color: Colors.white,),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start ,
          children :[
                Text("Good Morning!"),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Let's order fresh items for you",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  thickness: 4,
                ),
                Text(
                  "Fresh Items",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(child:
                    Consumer<CartModel>(builder: (context, value, child) {
                  return GridView.builder(
                      itemCount: value.shopItems.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                      childAspectRatio: 1/1.2),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          ItemName: value.shopItems[index][0],
                          ItemPrice: value.shopItems[index][1],
                          ImagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () {
                            Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                          },
                        );
                      });
                }))
              ],
            ),
          ),
      ),
      ),
    );
  }
}
