import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ImagePath;
  final color;
  void Function()? onPressed;

  GroceryItemTile(
      {Key? key,
      required this.ItemName,
      required this.ItemPrice,
      required this.ImagePath,
      this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: 190,
        child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black)),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage(
                                        ImagePath,
                                      ),
                              fit: BoxFit.fill)),
                    )),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0 ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            ItemName,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                            onPressed: onPressed ,
                            child: Text(
                              '\$' + ItemPrice,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              )),
                              backgroundColor: MaterialStateProperty.all(color),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),


      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12),
      //     color: color[100],
      //   ),
      //   child:
      //   Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image.asset(
      //         ImagePath,
      //         height: 50,
      //       ),
      //       Text(
      //         ItemName,
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       MaterialButton(
      //         onPressed: onPressed ,
      //         color: color[700],
      //         child: Text(
      //           '\$' + ItemPrice,
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
