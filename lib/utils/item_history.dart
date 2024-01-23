import 'package:cat_trivia/data/data_sources/local/adapter/CatHolder.dart';
import 'package:cat_trivia/data/models/CatModelCommon.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

Widget itemLocal(CatModelCommon catHolder) {
  DateTime createdAt = DateTime.parse(catHolder.createdAt ?? "");
  String formattedDate = DateFormat.yMd().add_Hms().format(createdAt);
  return Column(
    children: [
      Row(
        children: [
          Image.network(
            catHolder.image ?? '',
            height: 100,
            width: 100,
          ),
          Container(
            width: 200,
            child: Text(
              catHolder.text ?? '',
              maxLines: 2,
            ),
          ),
        ],
      ),
      Text(formattedDate),
    ],
  );
}