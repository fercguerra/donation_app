import 'package:donation_app/common/constants/app_colors.dart';
import 'package:donation_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
        
         children: [
          SizedBox(height: 60.0,
          ),
          Expanded(
            flex: 2,
            child: Container(
             
              color: AppColors.iceWhite,
              child: Image.asset('assets/images/man.png'),
            ),
          ),
          Text('Make Your Donation',
          style:AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,)),
          Text('and Saves Lives', style: AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,
          ),
          
          ),
          ElevatedButton(onPressed: (){}, child: Text('Get Started')),
      
          Text('Already have account? Log In',style: AppTextStyles.smallText.copyWith(color: AppColors.grey,
          ),
          ),
          SizedBox(height: 40.0,)
         ],
         
         
        ),
      ),
       
    );
  }
}