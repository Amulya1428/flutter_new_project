import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'text_widget.dart';
class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
          color: Color.fromRGBO(245, 246, 248, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'Coupon Codes',
            fontSize: 16,
            maxLines: 2,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 14),
            inputFormatters: <TextInputFormatter>[
              // FilteringTextInputFormatter.allow(RegExp(
              //   "[0-9]",
              // )),
              // LengthLimitingTextInputFormatter(10),
            ],
            decoration: InputDecoration(
              hintText: 'Have a coupon code?',
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              filled: true,
              suffix: TextWidget(
                text: 'Apply',
                fontSize: 16,
                color: Color.fromRGBO(105, 117, 134, 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width:
                      1.0, // Set the width of the border when focused
                ),
                borderRadius: BorderRadius.circular(
                    15.0), // Set the border radius if needed
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
            decoration: BoxDecoration(
                 color: Color.fromRGBO(224, 239, 255, 1),
                 borderRadius: BorderRadius.circular(15),
              border: Border.all( color: Color.fromRGBO(0, 53, 114, 1),)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/discount_icon.png',
                          scale: 4,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(
                          text: 'DHCASHBACK',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 53, 114, 1),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: TextWidget(
                            text: 'Congratulations!! Cashback of INR 810 will be credited to your card within 3 days of booking',
                            fontSize: 10,
                           color: Color.fromRGBO(105, 117, 134, 1),
                          ),
                    ),
                  ],
                ),
                TextWidget(
                      text: 'Remove',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 53, 114, 1),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}