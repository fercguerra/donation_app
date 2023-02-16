import 'dart:developer';

import 'package:donation_app/common/constants/app_colors.dart';
import 'package:donation_app/common/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/custom_text_buttom.dart';
import '../../common/widgets/primary_button.dart';


class OnboardingPage extends StatelessWidget {

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
        
         children: [
          SizedBox(height: 40.0,
          ),
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/man.png'),
          ),
          Text('Make Your Donation',
          style:AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,)),
          Text('and Saves Lives', style: AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,
          ),
          
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 16.0,
              bottom: 4.0,
            ),
            child: PrimaryButtom(text: 'Get Started' ,
            onPressed: () {},),
          ), 
          CustomTextButton(
            onPressed: (() => log('tap')) ,
            children: [
              
           Text('Already have account?', style: AppTextStyles.smallText.copyWith(color: AppColors.grey,
             ),),
           Text('Log In', style: AppTextStyles.smallText.copyWith(
           color: AppColors.greenligthTwo,),),
            ],
          ),         
         ],       
        ),
      ),
    );
  }
}


