import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/widgets/custom_elevated_buttom.dart';

class HostOrEmployee extends StatelessWidget {
  const HostOrEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(16.r),
        child: Column(
          mainAxisAlignment: .end,
          crossAxisAlignment: .stretch,
          children: [
            CustomElevatedButtom(onPressed: () {}, child: Text("Mohamed")),
          ],
        ),
      ),
    );
  }
}
