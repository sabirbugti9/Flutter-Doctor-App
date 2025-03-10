import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veseeta/core/utils/app_colors.dart';
import 'package:veseeta/core/utils/font_helper.dart';
import 'package:veseeta/generated/l10n.dart';
import 'package:veseeta/widgets/category_sections.dart';
import 'package:veseeta/widgets/doctor_card.dart';
import 'package:veseeta/widgets/my_app_bar.dart';
import 'package:veseeta/widgets/my_search_text_form_field.dart';
import 'package:veseeta/widgets/near_doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var edgeInsets = EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 16.h);
    return SafeArea(
      child: Padding(padding: edgeInsets,
      
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(),
            SizedBox(
              height: 32.h,
            ),
            DoctorCard(),
            SizedBox(height: 20,),
            MySearchTextFormField(controller: TextEditingController()),
            SizedBox(height: 24.h,),

            CategorySections(),
            SizedBox(height: 24.h,),
            NearByText(),
            SizedBox(height: 12.h,),
            NearDoctorCard(),
            SizedBox(height: 16.h,),
          ],
        ),
      ),
      ),
      
    
    );
  }
}

































class NearByText extends StatelessWidget {
  const NearByText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).nearby_doctors,
      style: FontHelper.myFont(
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryTextColor),
    );
  }
}
