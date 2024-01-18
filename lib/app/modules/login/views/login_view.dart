import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(hintText: "Masukan Nama Anda"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(hintText: "Masukan Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() =>
                controller.loadingLogin.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: () {
                  controller.login();
                }, child: Text("Login"))),
                ElevatedButton(onPressed: () {
                  Get.offAllNamed(Routes.REGISTER);
                }, child: Text("Register"))
              ],
            ),
          )),
    );
  }
}
