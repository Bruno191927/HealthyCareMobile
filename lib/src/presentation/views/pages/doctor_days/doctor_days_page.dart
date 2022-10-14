import 'package:flutter/material.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_days_available_doctor_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class DoctorDaysPage extends StatefulWidget {
  static const routeName = "doctordays";
  const DoctorDaysPage({ Key? key }) : super(key: key);

  @override
  State<DoctorDaysPage> createState() => _DoctorDaysPageState();
}

class _DoctorDaysPageState extends State<DoctorDaysPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('Mis Horarios',style: MyTextStyles.titleStylePrimaryBold,)
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: size.height *0.8,
              child: const ListDaysAvailableDoctorWidget(),
            )
          ],
        ),
    );
  }
}