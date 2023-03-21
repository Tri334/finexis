import 'package:finexis/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginClass extends StatelessWidget {
  const LoginClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp,
              color: colorpalette.secondary05),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Image.asset("images/logo_finexis1.png", scale: 12.5),
          const SizedBox(height: 25),
          const LoginFieldClass(),
          const Spacer(),
        ],
      ),
    );
  }
}

class LoginFieldClass extends StatefulWidget {
  const LoginFieldClass({super.key});

  @override
  State<LoginFieldClass> createState() => _LoginFieldClassState();
}

class _LoginFieldClassState extends State<LoginFieldClass> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  bool securePass = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Form(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              width: screenWidth - 20,
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 184, 184, 184),
                    ),
                  ),
                  labelText: "Your Email",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: screenWidth - 20,
              child: TextFormField(
                obscureText: securePass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Your Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                        securePass ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        securePass = !securePass;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Input Your Password";
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: screenWidth - 20,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: colorpalette.primaryTeal),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("Email: $_email\nPassword: $_password");
                  }
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.openSans(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: screenWidth - 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: colorpalette.primary03,
                    side: BorderSide(color: colorpalette.primaryTeal)),
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login with ',
                        style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: colorpalette.primaryTeal),
                      ),
                      TextSpan(
                        text: "Singpass",
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.red[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
