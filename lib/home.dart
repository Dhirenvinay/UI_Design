import 'package:cornerseat/login.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController countryController = TextEditingController();
  var phone = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/home.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.circle,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Its a date",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("assets/images/dp.jpeg"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "This meeting is Accepted by",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Robbert Fox",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "In 1 week 2 days",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Meet Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 110,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                //margin: EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xffFFFFFF)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffFFFFFF).withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(
                          0, 3), // Adjust the shadow offset for depth
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Friday",
                          ),
                        )),
                        const Text(
                          "|",
                          style: TextStyle(fontSize: 33, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "28/07/23",
                          ),
                        )),
                        const Text(
                          "|",
                          style: TextStyle(fontSize: 33, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          onChanged: (value) {
                            phone = value;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "12:00PM(L)",
                          ),
                        ))
                      ],
                    ),
                    Container(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: "Location: Aaha Food Court",
                            labelStyle: TextStyle(
                                color: Color(0xff787878),
                                fontWeight: FontWeight.bold),
                            suffixIcon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  border: Border.all(width: 1, color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Canel Meet',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: const Color(0xff762A39),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xff762A39),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'Close',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
