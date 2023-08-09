import 'package:cornerseat/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  var phone = "";
  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 320,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Mobile Number",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff787878)),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: SizedBox(
                              width: 60,
                              child: TextField(
                                controller: countryController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                          Container(
                            child: SizedBox(
                              width: 250,
                              child: TextFormField(
                                controller: phoneController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        )),
                                    hintText: "Phone Number"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(
                                      text: "I agree to the ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff64748B),
                                      )),
                                  TextSpan(
                                    text: "Term & Condition",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Color(
                                          0xffFF453C), // Set your custom color here
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        _showSnackbar(context,
                                            "Term & Condition Working");
                                      },
                                  ),
                                  const TextSpan(
                                      text: " and Privacy Statement",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff64748B),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 60),
                        decoration: const BoxDecoration(
                            color: Color(0xff762A39),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              _showSnackbar(context, "This button is working");
                              // Implement your signup navigation logic here
                            },
                            child: const Text("Don't Have an Account"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //],
      //),
    );
  }
}
