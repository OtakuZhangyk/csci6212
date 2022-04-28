import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/tab_search/data_list.dart';
import 'package:hook_up_rent/widgets/root_list_item_widget.dart';
import 'package:hook_up_rent/widgets/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchBar(
          showLocation: true,
          showMap: true,
          inputValue: '',
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
            child: Text('filterBar'),
          ),
          Expanded(
              child: ListView(
                  children: dataList
                      .map((item) => RoomListItemWidget(data: item))
                      .toList()))
        ],
      ),
    );
  }
}
