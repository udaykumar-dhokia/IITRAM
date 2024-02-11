import "package:cdc_iitram/constants/colors.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StudentSingUp extends StatefulWidget {
  const StudentSingUp({super.key});

  @override
  State<StudentSingUp> createState() => _StudentSingUpState();
}

class _StudentSingUpState extends State<StudentSingUp> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _enrollment = TextEditingController();
  final _branch = TextEditingController();
  // final _year = TextEditingController();

  List<String> year = ['1', '2', '3', '4'];
  String? selectedYear;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Back",
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
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.25,
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
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: Image(
                        image: AssetImage("lib/assets/logo.png"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Student",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        _textField("Name", TextInputType.name, _name),
                        const SizedBox(
                          height: 15,
                        ),
                        _textField("Email", TextInputType.emailAddress, _email),
                        const SizedBox(
                          height: 15,
                        ),
                        _textField("Password", TextInputType.text, _password),
                        const SizedBox(
                          height: 15,
                        ),
                        _textField(
                            "Enrollment", TextInputType.text, _enrollment),
                        const SizedBox(
                          height: 15,
                        ),
                        _textField("Branch", TextInputType.text, _branch),
                        const SizedBox(
                          height: 15,
                        ),
                        DropdownButtonFormField(
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: black),
                            ),
                            hint: Text(
                              "Year",
                              style: TextStyle(color: black),
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            items: year.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedYear = value!.toString();
                              });
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField _textField(
      String label, TextInputType type, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      cursorColor: black,
      style: GoogleFonts.poppins(),
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
