import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'text_widget.dart';
class GuestDetailsCard extends StatefulWidget {
  const GuestDetailsCard({
    super.key,
  });

  @override
  State<GuestDetailsCard> createState() => _GuestDetailsCardState();
}
  bool isChecked = false;
class _GuestDetailsCardState extends State<GuestDetailsCard> {
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
                      text: 'Primary Guest Details',
                      fontSize: 16,
                      maxLines: 2,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
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
                              hintText: 'First Name',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width:
                                      1.0, // Set the width of the border when focused
                                ),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Set the border radius if needed
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
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
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width:
                                      1.0, // Set the width of the border when focused
                                ),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Set the border radius if needed
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width:
                                1.0, // Set the width of the border when focused
                          ),
                          borderRadius: BorderRadius.circular(
                              12.0), // Set the border radius if needed
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: TextWidget(
                            text: '+91',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
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
                              hintText: 'Mobile number',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width:
                                      1.0, // Set the width of the border when focused
                                ),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Set the border radius if needed
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                          text: 'I have a GST number (optional)',
                          fontSize: 13,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: 'Add another guest',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(2, 81, 252, 1),
                    ),
                  ],
                ),
              );
  }
}