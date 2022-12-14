import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/info/info_data.dart';
import 'package:hook_up_rent/pages/home/info/item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            if (showTitle)
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '最新资讯',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            Column(
                children:
                    dataList.map((item) => InfoItemWidget(data: item)).toList()
                //     Container(
                //       height: 100,
                //       margin: const EdgeInsets.only(bottom: 10),
                //       decoration: const BoxDecoration(color: Colors.red),
                //     ))
                // .toList()
                )
          ],
        )
      ],
    );
  }
}
