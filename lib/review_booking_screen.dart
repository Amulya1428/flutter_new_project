import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ApiServices/api_services.dart';
import 'components/coupon_card.dart';
import 'components/guest_details_card.dart';
import 'components/text_widget.dart';

class ReviewBookingScreen extends StatefulWidget {
  const ReviewBookingScreen({super.key});

  @override
  State<ReviewBookingScreen> createState() => _ReviewBookingScreenState();
}

class _ReviewBookingScreenState extends State<ReviewBookingScreen> {
  bool isChecked = false;
  final List<String> stateItems = [
    'Hyderabad',
    'Kerala',
    'Odisa',
  ];

  String? selectedValue;
  void initState() {
    super.initState();
    fetchReviewBookingDetails();
  }

  fetchReviewBookingDetails() async {
    var response = await BookingsAPI().reviewDetailsApi(context);
    if (response != null) {
      print(response);
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/icons/back_icon.png',
          scale: 4,
        ),
        title: TextWidget(
          text: 'Review Booking',
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: TextWidget(
                                text: 'Radison Hyderabad Hitech City',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 53, 114, 1),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      TextWidget(
                                        text: '4.1',
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        maxLines: 2,
                                      ),
                                      Image.asset(
                                        'assets/icons/start_icon.png',
                                        scale: 4,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Verry Good",
                                        style: GoogleFonts.plusJakartaSans(
                                            color:
                                                Color.fromRGBO(0, 53, 114, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TextSpan(
                                        text: " (9750 Ratings)",
                                        style: GoogleFonts.plusJakartaSans(
                                          color:
                                              Color.fromRGBO(105, 117, 134, 1),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextWidget(
                              text: 'Gachibowli, Hyderabad',
                              fontSize: 15,
                              color: Color.fromRGBO(105, 117, 134, 1),
                              fontWeight: FontWeight.w500,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/image.png',
                          scale: 5,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Check-In',
                              fontSize: 15,
                              color: Color.fromRGBO(105, 117, 134, 1),
                              maxLines: 2,
                            ),
                            TextWidget(
                              text: '17 Oct',
                              fontSize: 15,
                              maxLines: 2,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(105, 117, 134, 1),
                              ),
                              borderRadius: BorderRadius.circular(16)),
                          child: TextWidget(
                            text: '1 Night',
                            fontSize: 15,
                            color: Color.fromRGBO(105, 117, 134, 1),
                            fontWeight: FontWeight.w500,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Check-Out',
                              fontSize: 15,
                              color: Color.fromRGBO(105, 117, 134, 1),
                              maxLines: 2,
                            ),
                            TextWidget(
                              text: '18 Oct',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Guest & rooms',
                          fontSize: 15,
                          color: Color.fromRGBO(105, 117, 134, 1),
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: '2 Adults',
                              fontSize: 15,
                              maxLines: 2,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TextWidget(
                              text: '1 Room',
                              fontSize: 15,
                              maxLines: 2,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Superior Room (Double or twin)',
                      fontSize: 15,
                      maxLines: 2,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text:
                          '(364 sq.ft (34 sq.mt) | City View | 1 Queen bed or 2 Twin Bed(s))',
                      fontSize: 13,
                      color: Color.fromRGBO(105, 117, 134, 1),
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(105, 117, 134, 1),
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextWidget(
                                text: 'Free Breakfast',
                                fontSize: 15,
                                color: Color.fromRGBO(105, 117, 134, 1),
                                fontWeight: FontWeight.w400,
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(105, 117, 134, 1),
                                    shape: BoxShape.circle),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextWidget(
                                text: 'Non-Refundable',
                                fontSize: 15,
                                color: Color.fromRGBO(105, 117, 134, 1),
                                fontWeight: FontWeight.w400,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Property Rules',
                      fontSize: 15,
                      maxLines: 2,
                      fontWeight: FontWeight.w600,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 6, // Ensure the bullet is visible
                                      height: 6,
                                      margin: EdgeInsets.only(top: 6),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(105, 117, 134, 1),
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: TextWidget(
                                        text:
                                            'Extra bed charges for extra child & adult is to be paid at hotel as per hotel policy',
                                        fontSize: 15,
                                        color: Color.fromRGBO(105, 117, 134, 1),
                                        fontWeight: FontWeight.w400,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       width: 6, // Ensure the bullet is visible
                          //       height: 6,
                          //       margin: EdgeInsets.only(top: 6),
                          //       decoration: BoxDecoration(
                          //           color: Color.fromRGBO(105, 117, 134, 1),
                          //           shape: BoxShape.circle),
                          //     ),
                          //     SizedBox(
                          //       width: 8,
                          //     ),
                          //     Expanded(
                          //       child: TextWidget(
                          //         text:
                          //             'Guests below 18 years of age are not allowed at the property',
                          //         fontSize: 15,
                          //         color: Color.fromRGBO(105, 117, 134, 1),
                          //         fontWeight: FontWeight.w400,
                          //         maxLines: 2,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Price Breakup',
                      fontSize: 16,
                      maxLines: 2,
                      fontWeight: FontWeight.w600,
                    ),
                    TextWidget(
                      text: '1 room X 1 night ',
                      fontSize: 13,
                      color: Color.fromRGBO(105, 117, 134, 1),
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Base Price',
                          fontSize: 13,
                          color: Color.fromRGBO(105, 117, 134, 1),
                          fontWeight: FontWeight.w400,
                          maxLines: 2,
                        ),
                        TextWidget(
                          text: '₹ 5647',
                          fontSize: 18,
                          color: Color.fromRGBO(0, 53, 114, 1),
                          fontWeight: FontWeight.w600,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Hotel taxes',
                          fontSize: 13,
                          color: Color.fromRGBO(105, 117, 134, 1),
                          fontWeight: FontWeight.w400,
                          maxLines: 2,
                        ),
                        TextWidget(
                          text: '₹ 647',
                          fontSize: 18,
                          color: Color.fromRGBO(0, 53, 114, 1),
                          fontWeight: FontWeight.w600,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Total Amount',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        TextWidget(
                          text: '₹ 6326',
                          fontSize: 18,
                          color: Color.fromRGBO(0, 53, 114, 1),
                          fontWeight: FontWeight.w600,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CouponCard(),
              SizedBox(
                height: 20,
              ),
              GuestDetailsCard(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'State',
                      fontSize: 16,
                      maxLines: 2,
                      fontWeight: FontWeight.w600,
                    ),
                    TextWidget(
                      text: 'Required for GST purpose on your tax invoice',
                      fontSize: 13,
                      color: Color.fromRGBO(105, 117, 134, 1),
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // TextFormField(
                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return "";
                    //     } else {
                    //       return null;
                    //     }
                    //   },
                    //   keyboardType: TextInputType.text,
                    //   style: TextStyle(fontSize: 14),
                    //   inputFormatters: <TextInputFormatter>[
                    //     // FilteringTextInputFormatter.allow(RegExp(
                    //     //   "[0-9]",
                    //     // )),
                    //     // LengthLimitingTextInputFormatter(10),
                    //   ],
                    //   decoration: InputDecoration(
                    //     hintText: 'State',
                    //     hintStyle: TextStyle(
                    //       fontSize: 15,
                    //       color: Colors.grey,
                    //     ),
                    //     fillColor: Colors.white,
                    //     filled: true,
                    //     suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.white,
                    //         width:
                    //             1.0, // Set the width of the border when focused
                    //       ),
                    //       borderRadius: BorderRadius.circular(
                    //           12.0), // Set the border radius if needed
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderSide:
                    //           BorderSide(color: Colors.white, width: 1.0),
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //   ),
                    // ),
                    DropdownButtonFormField2<String>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      hint: const Text(
                        'State',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: stateItems
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select state';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        //Do something when selected item is changed.
                      },
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.only(right: 8),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                        ),
                        iconSize: 24,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: Icon(
                            isChecked
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: Color.fromRGBO(105, 117, 134, 1),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(
                          text:
                              'Confirm and save these details to your profile',
                          fontSize: 13,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Make special requests',
                          fontSize: 16,
                          maxLines: 2,
                          fontWeight: FontWeight.w600,
                        ),
                        Icon(Icons.keyboard_arrow_down_sharp),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text:
                          'Special requests are subject to each hotel’s availability, maybe chargeable & can’t be guarenteed',
                      fontSize: 12,
                      color: Color.fromRGBO(105, 117, 134, 1),
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 246, 248, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By Proceeding you agree to Avoota's",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(105, 117, 134, 1),
                        fontWeight: FontWeight.w400),
                    children: const <TextSpan>[
                      TextSpan(
                          text: " User Agreement, Terms of Service ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(0, 53, 114, 1),
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: " and",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(105, 117, 134, 1),
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: " Cancellation & Property Booking Policies ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(0, 53, 114, 1),
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          color: Color.fromRGBO(0, 53, 114, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: '₹ 5647',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: '+₹ 679  taxes & fees',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: 'Per Night (2 Adults)',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    boxShadow: [
                      BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25))
                    ],
                    borderRadius: BorderRadius.circular(14)),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      14.00,
                    ),
                  )),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Euclid Circular B',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
