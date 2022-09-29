import 'package:bootcamp/model/model.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Items items;
  const ItemWidget({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: () {
          print("${items.name} pressed");
        },
        leading: Image.network(items.image),
        title: Text(
          items.name,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          items.desc,
        ),
        trailing: Text(
          "\$${items.price}",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
