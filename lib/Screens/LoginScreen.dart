import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isNotVisible = true;
  late FocusNode _emailFocus;
  late FocusNode _passwordFocus;
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailFocus = FocusNode();
    _passwordFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    //print("_isNotVisible: $_isNotVisible");

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/tazzatv_logo.png",
                  width: 100,
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 6),
                  child: TextFormField(
                    focusNode: _emailFocus,
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "Email/Phone",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 6),
                  child: TextFormField(
                    focusNode: _passwordFocus,
                    obscureText: _isNotVisible,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(_isNotVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isNotVisible = !_isNotVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 300,
                  child: CupertinoButton(
                    color: const Color(0xFFE02F29),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Forget Password?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(),
                  ),
                  child: const Text("SKIP"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Login With",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/twitter.png"
                      ),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/facebook.png"
                      ),
                      radius: 25,
                    ),
                    //Image.asset("assets/images/facebook.png",height: 80,width: 80,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
