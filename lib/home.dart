import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  late String fullName;
  late String email;
  late String password;
  late String phoneNumber;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Form Validation'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 17,
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'FullName is required!!';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    fullName = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: TextFormField(
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'E-mail is required!!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'E-Mail', border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: TextFormField(
                  obscureText: true,
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required!!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'Password', border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: TextFormField(
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Number is required!!';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'Phone Number', border: OutlineInputBorder()),
                ),
              ),
              Container(
                width: double.infinity,
                height: 55,
                margin: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Barvo it worked!!',style: TextStyle(color: Colors.white),),
                        ),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
