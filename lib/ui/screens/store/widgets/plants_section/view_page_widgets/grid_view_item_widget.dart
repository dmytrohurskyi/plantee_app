import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/data_models/item.dart';

class GridViewItemWidget extends StatelessWidget {
  final Item item;

  const GridViewItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0x0afff500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CachedNetworkImage(
              imageUrl: item.photoUrl,
              width: 155,
              height: 155,
              progressIndicatorBuilder: (context, url, loadingProgress) {
                return Center(
                  child: CircularProgressIndicator(
                      value: loadingProgress.progress),
                );
              },
            ),
          ),
          Text(item.category,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white38,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 3),
          Text(
            item.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 3),
          Text('\$ ${item.price}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              )),
        ],
      ),
    );
  }
}
