import 'package:flutter/material.dart';
import 'package:uber/screens/auth/widgets/text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.asset("assets/images/splash.png"),
                SizedBox(
                  height: 25,
                ),
                AppTextFormField(
                  hintText: "Enter Name",
                  controller: nameController,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  hintText: "Enter Email",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  hintText: "Enter Phone",
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                    hintText: "Enter Password",
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                  onPressed: () {

                  },
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
