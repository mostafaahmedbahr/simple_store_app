import 'package:electrical_store_mobile_app/constant.dart';
import 'package:electrical_store_mobile_app/models/product_card.dart';
import 'package:electrical_store_mobile_app/models/products.dart';
import 'package:electrical_store_mobile_app/screens/detailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
            child: Icon(Icons.menu),
          ),
        ],
        title: Text("مرحبا بكم فى متجر الالكترونيات",
        style:GoogleFonts.getFont('Almarai'),
      ),
        elevation: 0,
    ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 70),
                  ),
                  ListView.builder(
                    itemCount:products.length,
                      itemBuilder: (context,index)=>ProductCard(
                        item: index,
                        product: products[index],
                        press: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>DetailsScreen(
                            product: products[index],
                          ),
                          ),
                          );
                        },
                      ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

