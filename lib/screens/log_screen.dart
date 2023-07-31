import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';
import 'package:nytra_ui/screens/nav_bas.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 4,
                child: ListTile(
                  title: Image.asset("assets/images/loginPage.png"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 18),
                    child: Column(
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "This is a sample text line ",
                          style: TextStyle(color: bgtextColor),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              hintText: "Student Email",
                              labelText: "Email",
                              suffixIcon: const Icon(
                                Icons.mail,
                                color: bgtextColor,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: _passwordVisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              hintText: "Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                color: bgtextColor,
                              )),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forget password?",
                              style: TextStyle(fontSize: 13, color: themeColor),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        loginButton()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Login Button
  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: themeColor, borderRadius: BorderRadius.circular(8.0)),
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NavBar()));
          },
          child: const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          )),
    );
  }
}
