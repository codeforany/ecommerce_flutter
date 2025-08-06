import 'package:ecommerce/common/color_extension.dart';
import 'package:ecommerce/common/common_extension.dart';
import 'package:ecommerce/common_widgets/round_textfield.dart';
import 'package:ecommerce/screen/Profile/setting_switch_row.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var isSales = true;
  var isNewArrivals = false;
  var isDeliveryStatusChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TColor.bg,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: TColor.primaryText),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: TColor.primaryText, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 25),

              Text(
                "Personal Information",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 15),

              RoundTextfield(hitText: "Full Name"),

              RoundTextfield(hitText: "Date of Birth"),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change",
                      style: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: TColor.whiteText,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 11,
                            ),
                          ),

                          SizedBox(height: 12),

                          Row(
                            children: [
                              Text(
                                "***************",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 35),

              Text(
                "Notification",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 25),

              SettingSwitchRow(
                title: "Sale",
                isOn: isSales,
                onChanged: (isOn) {
                  setState(() {
                    isSales = isOn;
                  });
                },
              ),

              SettingSwitchRow(
                title: "New arrivals",
                isOn: isNewArrivals,
                onChanged: (isOn) {
                  setState(() {
                    isNewArrivals = isOn;
                  });
                },
              ),


              SettingSwitchRow(
                title: "Delivery status changes",
                isOn: isDeliveryStatusChange,
                onChanged: (isOn) {
                  setState(() {
                    isDeliveryStatusChange = isOn;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
