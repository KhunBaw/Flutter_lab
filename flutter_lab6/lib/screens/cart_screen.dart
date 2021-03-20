import 'package:flutter/material.dart';
import 'package:flutter_lab6/components/cart_item.dart';
import 'package:flutter_lab6/providers/cart_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) {
                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  child: CartItemWidget(
                    cart.items.values.toList()[i].bookId,
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].qty,
                    cart.items.values.toList()[i].title.toString(),
                  ),
                  secondaryActions: [
                    IconSlideAction(
                      caption: "Remove",
                      color: Colors.redAccent,
                      icon: Icons.delete_forever,
                      onTap: () {
                        cart.removeItem(cart.items.values.toList()[i].bookId);
                      },
                    )
                  ],
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '${NumberFormat("#,###").format(cart.totalAmount)}',
                      style: TextStyle(
                        color:
                            Theme.of(context).primaryTextTheme.headline6.color,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton(
                    child: Text('PLACE ORDER'),
                    onPressed: () {},
                    textColor: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
