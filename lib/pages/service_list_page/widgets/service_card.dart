import 'package:flutter/material.dart';
import 'package:services_app/constant/app_pallete.dart';

class ServiceCard extends StatelessWidget {
  final String name;
  final String status;
  final String serviceId;
  final String date;
  final String serviceName;
  final String serviceDescription;
  final VoidCallback onGetLocation;
  final VoidCallback onCallUs;

  const ServiceCard(
      {super.key,
      required this.name,
      required this.status,
      required this.serviceId,
      required this.date,
      required this.serviceName,
      required this.serviceDescription,
      required this.onGetLocation,
      required this.onCallUs});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppPallete.greyColor.withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppPallete.textColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppPallete.primaryColor.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        color: AppPallete.primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "#$serviceId",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppPallete.textColor.withOpacity(0.8),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppPallete.textColor.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppPallete.backgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    serviceName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.errorColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    serviceDescription,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppPallete.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: onGetLocation,
                  child: const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send,
                          color: AppPallete.primaryColor,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Get the Location",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppPallete.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40, // Set the height to ensure the divider is visible
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 222, 222, 222),
                    thickness: 1, // Thickness of the divider line
                  ),
                ),
                GestureDetector(
                  onTap: onCallUs,
                  child: const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.call,
                          color: AppPallete.primaryColor,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Call Us",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppPallete.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
