import 'package:flutter/material.dart';
import 'package:local_house/data/home_page_data.dart';
import 'package:local_house/models/singleRoomModel.dart';
import 'package:local_house/widgets/singleroom_widget.dart';

class TabBarData extends StatelessWidget {
  final List<SingleRoomModel> roomData;
  const TabBarData({Key? key, required this.roomData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: singleHouseData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = singleHouseData[index];
        return SingleRoomWidget(
          onPressed: () {},
          roomImage: data.roomImage,
          roomModel: data.roomModel,
          roomName: data.roomName,
          roomLocation: data.roomLocation,
          roomType: data.roomType,
          roomRent: data.roomRent,
        );
      },
    );
  }
}
