import 'package:cdc_iitram/auth/Student/student_signup.dart';
import 'package:cdc_iitram/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  List<String> dropdownItems = ["Student", "Alumini", "Faculty"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 100,
                        child: Image(
                          image: AssetImage("lib/assets/logo.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Continue as"),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: primary),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: primary),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      value: selectedValue,
                      borderRadius: BorderRadius.circular(15),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                      items: dropdownItems.map(
                        (String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // if (selectedValue == "Student") {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const StudentSingUp(),
                      //     ),
                      //   );
                      // }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 35,
                        right: 35,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedValue == "Student") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentSingUp(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 35,
                        right: 35,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Signup",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
