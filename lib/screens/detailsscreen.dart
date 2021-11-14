import 'package:electrical_store_mobile_app/constant.dart';
import 'package:electrical_store_mobile_app/models/products.dart';
import 'package:electrical_store_mobile_app/screens/details_body.dart';
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("رجوع",
        style: Theme.of(context).textTheme.bodyText2,),
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: Icon(Icons.arrow_back,
          color: kPrimaryColor,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
