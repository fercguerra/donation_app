import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButtom({
    Key? key, this.onPressed, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
    
      
     
        borderRadius: BorderRadius.all(Radius.circular(38.0)) ,
        child: Ink(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(38.0)),
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: onPressed !=null
          ? AppColors.greenGradient
          : AppColors.greyGradiente,
        
        ),
          ),
          child: InkWell(
             borderRadius: BorderRadius.all(Radius.circular(38.0)),
             onTap: onPressed,
             child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(38.0)),


              ),
              alignment: Alignment.center,
              height: 64.0,
              child: Text(
               text,
                style: AppTextStyles.mediumText18.copyWith(
                  color: AppColors.white),),
              ),
             ),
          ),

    
      );
  }
}