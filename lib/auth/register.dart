import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/bgimg.jpeg'), // Adjust the path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Registration form

          const Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 80), // Adjust the spacing as needed
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10), // Reduced space here
                  Expanded(
                    child: RegisterForm(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  // Create the controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set background color to white
      padding: const EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('Name'),
          const SizedBox(height: 5),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Email'),
          const SizedBox(height: 5),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Mobile'),
          const SizedBox(height: 5),
          TextField(
            controller: mobileController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5),
          const Text('Address'),
          const SizedBox(height: 5),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5),
          const Text('Address'),
          const SizedBox(height: 5),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5),
          const Text('Address'),
          const SizedBox(height: 5),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5),
          const Text('Address'),
          const SizedBox(height: 5),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 5),
          const Text('Address'),
          const SizedBox(height: 5),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Print the input values
              print(nameController.text);
              print(emailController.text);
              print(mobileController.text);
              print(addressController.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 51, 58, 199),
            ),
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
