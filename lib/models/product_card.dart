import 'package:electrical_store_mobile_app/constant.dart';
import 'package:electrical_store_mobile_app/models/products.dart';
import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  ProductCard({
    this.press,
    this.item,
    this.product,
  });
  final int item;
  final Product product;
  Function press;
  @override
  Widget build(BuildContext context) {
    double size=MediaQuery.of(context).size.width;
    return Container(
      height: 190,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0,15),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child:Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 160,
                width: 200,
                child: Image.asset(product.image,
                  fit: BoxFit.cover,),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child:SizedBox(
                height: 136,
                width:size-200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding ),
                      child: Text(product.title,
                        style: Theme.of(context).textTheme.bodyText1,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(product.subTitle,
                        style: Theme.of(context).textTheme.caption,),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding*1.5,
                          vertical: kDefaultPadding/5,
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text("السعر : \$${product.price}"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}