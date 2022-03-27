// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_house/appColors/app_colors.dart';
import 'package:local_house/data/home_page_data.dart';
import 'package:local_house/routes/routes.dart';
import 'package:local_house/screens/loginScreen/detailscreen/detail_screen.dart';
import 'package:local_house/svgimages/svg_images.dart';
import 'package:local_house/tabbar_data.dart';
import 'package:local_house/widgets/show_all_widget.dart';
import 'package:local_house/widgets/singleroom_widget.dart';
import '../styles/home_screen_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("Room on Rent"),
          Text("House on Sale"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "WELCOME",
            style: HomeScreenStyles.appBarUpperTitleStyles,
          ),
          Text(
            "Feel free to explore, as it is your future house",
            style: HomeScreenStyles.appBarButtomTitleStyles,
          )
        ],
      ),
      actions: [
        IconButton(
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildAdvertismentPlace() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 170,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: const Duration(microseconds: 1000),
          showIndicator: false,
          images: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("images/blog1.jpg"),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("images/blog2.jpg"),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                buildAdvertismentPlace(),
                const ShowAllWidget(
                  leftText: "New Arrival",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleRoomData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = singleRoomData[index];
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
                ),
                const ShowAllWidget(
                  leftText: "History",
                ),
                SizedBox(
                  height: 240,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleRoomData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = singleRoomData[index];
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
                ),
              ],
            ),
            TabBarData(
              roomData: singleHouseData,
            ),
          ],
        ),
      ),
    );
  }
}
