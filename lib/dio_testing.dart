import 'package:dio_try/details_model.dart';
import 'package:dio_try/dio_requests.dart';
import 'package:dio_try/widgets.dart';
import 'package:flutter/material.dart';

class DioTest extends StatefulWidget {
  const DioTest({super.key});

  @override
  State<DioTest> createState() => _DioTestState();
}

class _DioTestState extends State<DioTest> {
  final idController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          textField(controller: idController, hint: 'ID'),
          spacer(10),
          textField(controller: firstNameController, hint: 'FIRST NAME'),
          spacer(10),
          textField(controller: lastNameController, hint: 'LAST NAME'),
          spacer(10),
          textField(controller: birthdayController, hint: 'BIRTHDAY'),
          spacer(10),
          textField(controller: genderController, hint: 'GENDER'),
          spacer(10),
          textField(controller: mobileController, hint: 'MOBILE'),
          spacer(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(
                  text: 'GET',
                  onPressed: () {
                    DioRequests().getInfo(int.parse(idController.text));
                  }),
              button(
                  text: 'POST',
                  onPressed: () {
                    DioRequests().putInfo(
                        details: Details(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      birthday: birthdayController.text,
                      gender: genderController.text,
                      mobile: mobileController.text,
                    ));
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              button(
                  text: 'PATCH',
                  onPressed: () {
                    DioRequests().updateInfo(
                        id: int.parse(idController.text),
                        details: Details(
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          birthday: birthdayController.text,
                          gender: genderController.text,
                          mobile: mobileController.text,
                        ));
                  }),
              button(text: 'DELETE', onPressed: () {}),
            ],
          ),
        ]),
      ),
    );
  }
}
