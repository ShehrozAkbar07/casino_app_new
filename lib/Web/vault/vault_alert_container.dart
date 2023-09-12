import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class VaultAlert extends StatefulWidget {
  const VaultAlert({super.key});

  @override
  State<VaultAlert> createState() => _VaultAlertState();
}

class _VaultAlertState extends State<VaultAlert> {
  TextEditingController controller = TextEditingController();
  String? _mySelection1;

  List<Map<String, String>> myJson = [
    {
      'Duration': '0.0000',
    },
    {'Duration': '0.003'},
    {'Duration': '0.005'},
    {'Duration': '0.007'},
    {'Duration': '1.00'},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff1d2b36),
      height: 100.h,
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w),
            child: Text('Currency',
                style: TextStyle(
                    fontSize: 4.sp,
                    color: const Color(0xffb3bbd1),
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              height: 55.h,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 1),
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff13212d)),
              child: DropdownButton<String>(
                dropdownColor: primary,
                icon: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 7.sp,
                    color: whiteColor,
                  ),
                ),
                underline: const SizedBox(),
                isExpanded: true,
                hint: Row(
                  children: [
                    // SizedBox(
                    //   width: 15.w,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, left: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('0.001',
                              style: TextStyle(
                                  fontSize: 4.sp,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold)),
                          Image.asset(
                            'assets/images/bitcoin.png',
                            height: 30.h,
                            fit: BoxFit.contain,
                            width: 20.w,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                value: _mySelection1,
                onChanged: (newValue) {
                  setState(() {
                    _mySelection1 = newValue;
                  });
                },
                items: myJson.map((Map map) {
                  return DropdownMenuItem<String>(
                    value: map['Duration'].toString(),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                map['Duration'].toString(),
                                style: TextStyle(
                                    fontSize: 4.sp,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text('Amount',
              style: TextStyle(
                  fontSize: 4.sp,
                  color: const Color(0xffb3bbd1),
                  fontWeight: FontWeight.bold)),
          Row(
            children: [
              SizedBox(
                width: 100.w,
                height: 45.h,
                child: TextFormField(
                  controller: controller,
                  style: const TextStyle(color: whiteColor),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    labelStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 10),
                    fillColor: const Color(0xff13212d),
                    filled: true,
                    prefix: Padding(
                      padding: EdgeInsets.only(right: 5.w),
                    ),
                    hintText: "Phone Number",
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff5b6f84), width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff5b6f84), width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xff5b6f84), width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Container(
                height: 45.h,
                width: 25.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: secondary),
                child: Center(
                  child: Text(
                    "Max",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xff69e244)),
              child: Center(
                child: Text(
                  'Deposit To Vault',
                  style: TextStyle(
                    fontSize: 4.sp,
                    color: primary,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Text(
                'Improve your account security with Two-Factor Authention',
                style: TextStyle(
                    fontSize: 4.sp,
                    color: const Color(0xffb3bbd1),
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 45.h,
                width: 25.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3276da)),
                child: Center(
                  child: Text(
                    "Enable 2FA",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text('Learn more about Vault',
                style: TextStyle(
                    fontSize: 4.sp,
                    color: const Color(0xffb3bbd1),
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
