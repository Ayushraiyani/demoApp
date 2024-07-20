import 'package:flutter/material.dart';
import 'package:services_app/constant/app_pallete.dart';
import 'package:services_app/pages/service_list_page/service_list_page.dart';
import 'package:services_app/pages/profile_page/widgets/image_avatar.dart';
import 'package:services_app/pages/profile_page/widgets/services_list_tile.dart';
import 'package:services_app/pages/profile_page/widgets/stars_rating.dart';
import 'package:services_app/widget/custom_bottom_bar.dart';
import 'package:services_app/widget/floating_nav_btn.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: AppPallete.primaryColor,
              ),
              Positioned(
                top:
                    110, // Adjusted position to be 20 pixels below the container's top edge
                left:
                    20, // horizontally 20 pixels above the container's left edge
                child: AvatarWithBorder(
                  imageUrl:
                      "https://mrwallpaper.com/images/hd/cool-profile-pictures-panda-man-gsl2ntkjj3hrk84s.jpg",
                  radius: 50,
                  borderWidth: 2,
                  borderColor: AppPallete.backgroundColor,
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 20), // Space between the profile picture and the name
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Aamir Shaikh',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.textColor),
                ),
                const Text(
                  'Technician',
                  style: TextStyle(
                    color: AppPallete.textColor,
                  ),
                ),
                const StarRating(rating: 4.5, reviews: 32),
                const SizedBox(
                    height: 20), // Space between the name and the description

                ServicesListTile(
                  title: "Total Services",
                  number: 55,
                  color: const Color(0xff254763),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceListPage(
                                  title: 'Total',
                                )));
                  },
                ),
                ServicesListTile(
                  title: "Completed Services",
                  number: 40,
                  color: const Color(0xfff0a058),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceListPage(
                                  title: 'Completed',
                                )));
                  },
                ),
                ServicesListTile(
                  title: "Pending Services",
                  number: 3,
                  color: const Color(0xff719eb1),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceListPage(
                                  title: 'Pending',
                                )));
                  },
                ),
                ServicesListTile(
                  title: "Emergency Service",
                  number: 3,
                  color: const Color(0xffea484d),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceListPage(
                                  title: 'Emergency',
                                )));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingNavBtn(),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
