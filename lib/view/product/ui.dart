
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("This is a Product pages",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),),
      body: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [


                  Container(
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://via.placeholder.com/150",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 12),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Text(
                          "Wireless Headphone",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),


                        Text(
                          "Brand: Sony",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),

                        SizedBox(height: 6),


                        Row(
                          children: [

                            
                            Text(
                              "৳2,500",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),

                            SizedBox(width: 8),


                            Text(
                              "৳3,000",
                              style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      )

    );
  }
}
