import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/ButtomNav.dart';
import 'package:login_app/home_Screen/page/Homepage.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.purple,
        ),
        title: "Login App",
        home: LoginApp(),
      ),
    );

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool showOTPField = false;
  bool otpEntered = false;

  final TextEditingController _otpController = TextEditingController();

  void getOTP() {
    setState(() {
      showOTPField = true; // Show OTP field
    });
  }

  void submitOTP() {
    setState(() {
      otpEntered = true;
      // Handle OTP submission logic here
      print("OTP Submitted");
    });
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purpleAccent,
                Colors.amber,
                Colors.blue,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 250,
                width: 320,
                child: Lottie.asset("assets/lottie/login2.json"),
              ),
              const SizedBox(height: 10),
              Container(
                width: 375,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      "KRD",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (!showOTPField) ...[
                      const Text(
                        "Please Enter Your Details",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 30),
                      _buildTextField("Name"),
                      const SizedBox(height: 12),
                      _buildTextField("Area"),
                      const SizedBox(height: 12),
                      _buildTextField("City"),
                      const SizedBox(height: 12),
                      _buildTextField("Contact"),
                    ],
                    if (showOTPField) ...[
                      const SizedBox(height: 12),
                      Container(
                        width: 260,
                        child: TextField(
                          controller: _otpController,
                          decoration: const InputDecoration(
                            labelText: "Enter OTP",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              otpEntered = value.isNotEmpty;
                            });
                          },
                        ),
                      ),
                    ],
                    const SizedBox(height: 20),
                    if (!otpEntered)
                      _buildButton('Get OTP', getOTP),
                    if (otpEntered)
                      _buildButton('Submit', ()
                      {
                        submitOTP();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()),
                        );
                      })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Container(
      width: 260,
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 250,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF8A2387),
              Color(0xFFE94057),
              Color(0xFFF27121),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
