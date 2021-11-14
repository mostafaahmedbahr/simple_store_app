import 'package:electrical_store_mobile_app/constant.dart';
import 'package:electrical_store_mobile_app/models/products.dart';
import 'package:flutter/material.dart';
class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height*0.6,
          width: double.infinity,
          decoration: BoxDecoration(
            color:kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            )
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    height: 200,
                    width: 200,
                  ),
                  Positioned(
                      bottom: 0,
                      top: 0,
                      child:Image.asset(product.image,
                     ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: kTextLightColor),
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(3),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: kTextLightColor),
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.all(3),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: kTextLightColor),
                        color: Colors.grey,
                      ),
                      padding: EdgeInsets.all(3),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 150,
                  top: 30,
                ),
                child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,
                top: 20),
                child: Text("السعر : ${product.price}\$",
                  style: TextStyle(
                    fontSize: 30,
                    color: kSecondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(product.description,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),
        ),
      ],
    );
  }
}
