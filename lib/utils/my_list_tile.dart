import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileDesc;
  const MyListTile(
      {Key? key,
      required this.iconImagePath,
      required this.tileName,
      required this.tileDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                height: 70,
                child: Image.asset(iconImagePath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileDesc,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              )
            ],
          ),  
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
