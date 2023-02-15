import 'package:donation_app/common/constants/app_colors.dart';
import 'package:donation_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0,),
            child: PrimaryButtom(text: 'Get Started' ,
            onPressed: () {},),
          ),

          
      
          Text('Already have account? Log In',style: AppTextStyles.smallText.copyWith(color: AppColors.grey,
          ),
          ),
          SizedBox(height: 24.0,)
         ],
         
         
        ),
      ),
       
    );
  }
}

