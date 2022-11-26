import 'package:flutter/material.dart';
import 'package:healthycareapp/src/data/datasources/api/auth_api.dart';
import 'package:healthycareapp/src/data/datasources/api/doctor_api.dart';
import 'package:healthycareapp/src/data/datasources/local/auth.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_cards_category_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/list_grid_cards_doctor_widget.dart';
import 'package:healthycareapp/src/presentation/core/shared_widgets/search_widget.dart';
import 'package:healthycareapp/src/presentation/core/styles/my_text_styles.dart';

class FindAppoimentPage extends StatelessWidget {
  const FindAppoimentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Text('Agenda una Cita',style: MyTextStyles.titleStylePrimaryBold),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text('Elige una categoria',style: MyTextStyles.subTitleStyle),
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 140,
              child: ListCardsCategoryWidget(),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text('Doctores Disponibles',style: MyTextStyles.subTitleStyle),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 380,
              child: FutureBuilder(
                future: DoctorApi.instance.findCitas(),
                builder: (BuildContext context, AsyncSnapshot<List<DoctorModel>> snapshot) {
                  if(snapshot.hasData){
                    return ListGridCardsDoctorWidget(models: snapshot.data!);
                  }
                  else{
                    return const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xffff3366)),
                      ),
                     );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}