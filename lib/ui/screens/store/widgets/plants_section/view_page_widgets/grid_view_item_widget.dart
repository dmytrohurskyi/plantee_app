import 'package:flutter/material.dart';
import 'package:plantee_app/data_models/item.dart';

class GridViewItemWidget extends StatelessWidget {
  final Item item;

  const GridViewItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.network(
                  item.photoUrl,
                  width: 140,
                  height: 140,
                ),
              ),
              Expanded(
                child: Text(item.category,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white38,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                    )),
              ),
              const SizedBox(height: 3),
              Expanded(
                child: Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Expanded(
                child: Text('\$ ${item.price}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
