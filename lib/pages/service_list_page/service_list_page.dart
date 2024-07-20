import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:services_app/constant/app_pallete.dart';
import 'package:services_app/data/services_data.dart';
import 'package:services_app/pages/service_list_page/widgets/service_card.dart';
import 'package:services_app/widget/custom_bottom_bar.dart';
import 'package:services_app/widget/floating_nav_btn.dart';

class ServiceListPage extends StatelessWidget {
  final String title;
  const ServiceListPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppPallete.whiteColor,
        leadingWidth: 120,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 4),
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: AppPallete.primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$title Service',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 237, 237, 237),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SvgPicture.asset(
                    "assets/icons/test (2).svg",
                    height: 60,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 32, bottom: 8),
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final service = services[index];
                  return ServiceCard(
                    name: service['name'],
                    status: service['stutus'],
                    serviceId: service['serviceId'],
                    date: service['date'],
                    serviceName: service['serviceName'],
                    serviceDescription: service['serviceDescription'],
                    onGetLocation: () {},
                    onCallUs: () {},
                  );
                },
              ),
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
