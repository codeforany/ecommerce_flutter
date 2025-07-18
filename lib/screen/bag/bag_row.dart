import 'package:ecommerce/common/color_extension.dart';
import 'package:flutter/material.dart';

class BagRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;
  const BagRow({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 104,
        margin: const EdgeInsets.only(bottom: 15),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                obj["image"].toString(),
                width: 104,
                height: 104,
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            obj["name"].toString(),
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: TColor.placeholder,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        Text(
                          "Color: ",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "Black",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(width: 15),
                        Text(
                          "Size: ",
                          style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "L",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withValues(
                                        alpha: 0.05,
                                      ),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: TColor.primaryText,
                                ),
                              ),
                            ),

                             Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),


                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withValues(
                                        alpha: 0.05,
                                      ),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: TColor.primaryText,
                                ),
                              ),
                            ),

                           
                           
                          ],
                        ),

                        Text(
                          "${obj["price"].toString()}\$",
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
            ),
          ],
        ),
      ),
    );
  }
}
