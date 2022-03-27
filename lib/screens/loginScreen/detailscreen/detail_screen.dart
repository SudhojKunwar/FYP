import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_house/appColors/app_colors.dart';
import 'package:local_house/data/detail_screen_data.dart';
import 'package:local_house/models/singleRoomModel.dart';
import 'package:local_house/routes/routes.dart';
import 'package:local_house/styles/detail_screen_style.dart';
import 'package:local_house/svgimages/svg_images.dart';
import 'package:local_house/widgets/singleroom_widget.dart';

class DetailScreen extends StatefulWidget {
  final SingleRoomModel data;
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PreferredSize buildAppbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.7,
        centerTitle: true,
        title: const Text(
          "Reebook",
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.heart,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: "Fave",
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              SvgImages.upload,
              color: AppColors.baseBlackColor,
              width: 35,
              semanticsLabel: "Fave",
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "images/logo.jpg",
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.roomName,
                  style: DetailScreenStyle.roomLocationStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.roomModel,
                  style: DetailScreenStyle.roomModelStyle,
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.roomRent.toString(),
                  style: DetailScreenStyle.roomRentStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.roomImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.roomSecondImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.roomThirdImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.roomFourthImage),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkGreenColor,
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Add to Cart",
                style: DetailScreenStyle.buttonTextStyle,
              ),
              onPressed: () {},
            ),
          ),
          ExpansionTile(
            title: Text(
              "Description",
              style: DetailScreenStyle.descriptionTextStyle,
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    const Text(
                      "This woman's tank top is designed to help you",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tMaterial",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "84% nylon",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "16% elastance",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tSize",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "2XS, \tXS, \t s, \tM ",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tGender",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Women",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\t Province",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Balochistan",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              ".\t\tCountry",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                            Text(
                              "Nepal",
                              style: TextStyle(
                                fontSize: 18.60,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 55,
                          elevation: 0,
                          child: Text(
                            "Size Gruide",
                            style: DetailScreenStyle.sizeGruideTextStyle,
                          ),
                          minWidth: double.infinity,
                          color: AppColors.baseWhite60Color,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            leading: Text(
              "You may also like",
              style: DetailScreenStyle.youmayalsolikeTextStyle,
            ),
            trailing: Text(
              "Show All",
              style: DetailScreenStyle.showallTextStyle,
            ),
          ),
          SizedBox(
            height: 240,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: true,
              itemCount: detailScreenData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                var data = detailScreenData[index];
                return SingleRoomWidget(
                  onPressed: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: DetailScreen(
                        data: data,
                      ),
                    );
                  },
                  roomImage: data.roomImage,
                  roomModel: data.roomModel,
                  roomName: data.roomName,
                  roomLocation: data.roomLocation,
                  roomType: data.roomType,
                  roomRent: data.roomRent,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
