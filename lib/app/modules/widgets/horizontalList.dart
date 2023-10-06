import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/padding.dart';
import '../../data/models/job.dart';
import '../EmployeeMainPagesContent/widgets/lastOffersWidget.dart';

class HorizontalList extends StatelessWidget {
  final List<Job> jobs;
  const HorizontalList({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.h,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
              horizontal: AppPadding.mainPadding,vertical: 0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>LastOffersWidget(job: jobs[index],),//SvgPicture.asset(controller.companiesIcons[index]),
          separatorBuilder: (context,index)=>SizedBox(width:8.w,),
          itemCount: jobs.length),
    );
  }
}
