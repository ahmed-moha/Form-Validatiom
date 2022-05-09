import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  late String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FORM VALIDATION'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  onChanged: (value){
                    name=value;
                    print(value);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Magacaaga qor fadlan';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: 'Name', border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'E-mail', border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child:  TextFormField(
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Soo Gali Password-Kaaga';
                    }

                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password', border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Phone Number', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {
                    print('NAME $name');
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Very Good',style: TextStyle(color: Colors.white),),
                        ),
                      );
                    }
                  },
                  child: const Text('SUBMIT'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
