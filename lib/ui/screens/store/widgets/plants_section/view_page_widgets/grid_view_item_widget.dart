import 'package:flutter/material.dart';
import 'package:plantee_app/data_models/item.dart';

class GridViewItemWidget extends StatelessWidget {
  final Item item;

  const GridViewItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                item.photoUrl,
                width: 120,
                height: 120,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(item.category,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white38,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  )),
              const SizedBox(
                height: 3,
              ),
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text('\$ ${item.price}',
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  )),
            ],
          )),
    );
  }
}
