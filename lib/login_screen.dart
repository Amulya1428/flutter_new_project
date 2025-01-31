import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_new_project/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isNumberEntered = false;
  final List<String> countryItems = [
    '+91',
    '+66',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       'Skip',
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //         fontFamily: 'Poppins',
                  //         fontWeight: FontWeight.w500,
                  //         height: 1.50,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Image.network(
                      'https://images.pexels.com/photos/439391/pexels-photo-439391.jpeg',
                      scale: 4,
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, offset: Offset.zero)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unlock Your Perfect Stay',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        'Sign in for personalized deals nad hassle- free bookings',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        // Container(
                        //   padding:
                        //       EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(8),
                        //       border: Border.all(
                        //           color: const Color.fromARGB(
                        //               255, 131, 130, 130))),
                        //   child: Row(
                        //     children: [
                        //       Text('+91',
                        //           style: TextStyle(
                        //               fontSize: 15,
                        //               fontWeight: FontWeight.w600)),
                        //       Icon(
                        //         Icons.keyboard_arrow_down_rounded,
                        //         size: 30,
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: DropdownButtonFormField2<String>(
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
                              '+91',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: countryItems
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
                                return 'Please select country';
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
                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(RegExp(
                                "[0-9]",
                              )),
                              LengthLimitingTextInputFormatter(10),
                            ],
                            maxLines: 1,
                            onChanged: (value) {
                              setState(() {
                                isNumberEntered = value.isNotEmpty;
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter mobile number';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                hintText: 'Mobile number',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 131, 130, 130))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 131, 130, 130))),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: isNumberEntered == false
                              ? const Color.fromARGB(255, 242, 184, 180)
                              : Colors.red[400],
                          boxShadow: [BoxShadow(color: Colors.black)],
                          borderRadius: BorderRadius.circular(14)),
                      child: TextButton(
                        onPressed: isNumberEntered == false
                            ? () {}
                            : () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                        style: TextButton.styleFrom(
                            fixedSize: Size(
                              double.maxFinite,
                              20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                14.00,
                              ),
                            )),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 0.6,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 0.6,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Icon(Icons.apple)),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Icon(Icons.apple)),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By Proceeding you agree to Avoota's",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        children: const <TextSpan>[
                          TextSpan(
                              text: " Privacy Policy, User Agreement, T&C's ",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D47A1),
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
