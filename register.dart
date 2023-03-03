import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool isPassword = true;
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final conController = TextEditingController();
    final fromkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /* Start ClipPath */
            CustomPaint(
              painter: ClipCustomPainter(),
              child: SizedBox(
                width: double.infinity,
                height: (350 * 0.6).toDouble(),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            /* End ClipPath */

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: const Text(
                'Join In New Journy...',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 150, 0, 0)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            /* Start Input Field*/
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: fromkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        hintText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isPassword = !isPassword;
                              },
                            );
                          },
                          icon: isPassword
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /* End Input Field*/
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: OutlinedButton(
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {
                          debugPrint(emailController.text);
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 150, 0, 0))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 300,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      // style: const ButtonStyle(
                      //   backgroundColor: MaterialStatePropertyAll(
                      //     Color.fromARGB(255, 150, 0, 0),
                      //   ),
                      // ),
                      child: const Padding(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "I have account,  Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 30, 0, 100),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 150, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    // path.lineTo(0, size.height / 1.25);
    // path.cubicTo(size.width / 2 * 0.6, size.height * 0.5, size.width * 2 / 2,
    //     size.height * 1.2, size.width * 1.2, size.height / 1.5);
    // path.lineTo(size.width, 0);
    path.moveTo(size.width * 0, size.height * 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.7871429);
    path.quadraticBezierTo(size.width * 0.7495833, size.height * 0.9292857,
        size.width * 0.4983333, size.height * 0.7842857);
    path.quadraticBezierTo(size.width * 0.2512500, size.height * 0.6371429, 0,
        size.height * 0.7842857);
    path.lineTo(size.width * 0.0008333, size.height * 0.0014286);
    path.close();
    canvas.drawPath(path, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
