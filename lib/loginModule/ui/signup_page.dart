import 'package:finexis/models/fontstyle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Tell us more about you", style: fontComponent.roboto16w500),
            const SizedBox(height: 30),
            SizedBox(
              width: screenWidth - 10,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const FamClient(),
                      ));
                    });
                  },
                  child: Text(
                    "I am a FAM Client",
                    style: fontComponent.roboto16w300,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class FamClient extends StatelessWidget {
  const FamClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
