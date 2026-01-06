import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/services/getxcon.dart';

class ProductGetxScreen extends StatelessWidget {
  ProductGetxScreen({super.key});
  final ProductGetXcontroller cc =  Get.put(ProductGetXcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "This is a Product pages",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
      ),
      body:Obx(() =>  ListView.builder(
        itemCount:cc.data.length,
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
                          "https://eplay.coderangon.com/public/storage/${cc.data[index]['image']}",
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
                          "${cc.data[index]['title']}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "category: ${cc.data[index]['category']}",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),

                        Text(
                          "Brand: ${cc.data[index]['brand']}",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          "stock: ${cc.data[index]['stock']}",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),

                        SizedBox(height: 6),

                        Row(
                          children: [
                            Text(
                              "৳,${cc.data[index]['price']}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),

                            SizedBox(width: 8),

                            Text(
                              "৳,${cc.data[index]['old_price']}",
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
      ),)
    );
  }
}
