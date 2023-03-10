import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/custom_text_buttom.dart';
import '../../common/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(       
          children: [
            Text('Vamos começar',
          textAlign: TextAlign.center,
          style:AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,)),
          Text('Faça seu cadastro!', 
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText.copyWith(color: AppColors.greenligthTwo,
          ),       
          ),
          Image.asset('assets/images/Stuck at Home To Do List.png',
          ),
         Form(child: Column(
          children: const [
             CustomTextFormField(padding: null,

          
   ),
          ],
         )),
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32.0,
              top: 16.0,
              bottom: 4.0,
            ),
            child: PrimaryButtom(text: 'Sign Up' ,
            onPressed: () => log('tap') ,),
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
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  const CustomTextFormField({
    Key? key, required this.padding,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

final defautBorder = const OutlineInputBorder(
  borderSide: BorderSide(color: AppColors.greenligthTwo),
);


class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? 
      const EdgeInsets.symmetric(
        horizontal: 24.0, 
        vertical: 12.0,
        ),
      child: TextFormField(
        decoration: InputDecoration(  
          hintText:  'Fernanda Guerra',
          floatingLabelBehavior: FloatingLabelBehavior.always,       
          labelText: 'YOUR NAME',
          labelStyle: AppTextStyles.inputLabelText.copyWith(color: AppColors.grey),            
         
         focusedBorder: defautBorder.copyWith(borderSide: const BorderSide(color: Colors.red,
         ),
         ),
         errorBorder: defautBorder,
         focusedErrorBorder: defautBorder,
         enabledBorder: defautBorder,
         disabledBorder: defautBorder,
        ),
    
      ),
    );
  }
}