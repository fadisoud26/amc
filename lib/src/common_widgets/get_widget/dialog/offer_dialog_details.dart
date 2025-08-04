import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferDialogDetails extends StatelessWidget {
  OfferDialogDetails({
    super.key,
    required this.name,
    required this.description,
    this.startDate,
    this.endDate,
    this.percent,
    this.oldPrice,
    this.newPrice,
  });
  final String name;
  final List<String> description;
  final String? startDate;
  final String? endDate;
  final String? percent;
  final String? oldPrice;
  final String? newPrice;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width * 0.8,
        // height: Get.height * 0.6,
        child: Material(
          elevation: 10,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(100), bottomLeft: Radius.circular(100)),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100)),
                image: DecorationImage(
                    image: AssetImage(backgroundImg), fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      name,
                      style: const TextStyle(
                          color: theWhiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: ListView.builder(
                        itemCount: description.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          return Text(
                            description[index],
                            style: const TextStyle(
                                color: theWhiteColor, fontSize: 18),
                          );
                        }),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 5),
                      child: Text.rich(
                        TextSpan(
                          style: const TextStyle(
                              color: theWhiteColor, fontSize: 18),
                          children: [
                            TextSpan(text: startDate.toString().split(' ')[0]),
                            (startDate != '-' && endDate != '-')
                                ? TextSpan(text: AMCText.toText.tr)
                                : const TextSpan(text: ''),
                            (startDate != '-' && endDate != '-')
                                ? TextSpan(
                                    text: endDate.toString().split(' ')[0])
                                : const TextSpan(text: ''),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    child: (percent != "-")
                        ? Text(
                            '$percent %',
                            style: const TextStyle(
                                color: theWhiteColor, fontSize: 18),
                          )
                        : (oldPrice != "-" && newPrice != "-")
                            ? Text.rich(
                                TextSpan(
                                  style: const TextStyle(
                                      color: theWhiteColor, fontSize: 18),
                                  children: [
                                    TextSpan(
                                      text: '$oldPrice${AMCText.spText.tr}',
                                      style: const TextStyle(
                                        color: theWhiteColor,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    const TextSpan(text: '\t\t'),
                                    TextSpan(
                                        text: '$newPrice${AMCText.spText.tr}'),
                                  ],
                                ),
                              )
                            : (newPrice != "-")
                                ? Text('$newPrice${AMCText.spText.tr}')
                                : const Text(''),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
