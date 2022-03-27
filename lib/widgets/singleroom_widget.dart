import 'package:flutter/material.dart';
import 'package:local_house/appColors/app_colors.dart';

class SingleRoomWidget extends StatelessWidget {
  final String roomImage;
  final String roomName;
  final String roomType;
  final String roomModel;
  final String roomLocation;
  final double roomRent;
  final Function onPressed;

  const SingleRoomWidget({
    Key? key,
    required this.roomImage,
    required this.roomName,
    required this.roomType,
    required this.roomModel,
    required this.roomLocation,
    required this.roomRent,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: AppColors.baseGrey90Color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(roomImage),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    size: 30,
                    color: AppColors.baseDarkOrangeColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roomName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    roomModel,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.baseDarkPinkColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ $roomRent",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
