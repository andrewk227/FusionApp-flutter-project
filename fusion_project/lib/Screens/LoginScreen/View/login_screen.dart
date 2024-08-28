import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 50,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome to App',
              style: TextStyle(
                color: Color.fromARGB(255, 183, 152, 84),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Here\'s a good place for a brief overview of the app or its key features.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.orange,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Employee'),
                      Tab(text: 'Phone Number'),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: TabBarView(
                      children: [
                        // Employee Tab
                        Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.lock),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: false,
                                        onChanged: (bool? value) {}),
                                    const Text('Remember me?'),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Forgot Password?'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 183, 152, 84),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text('Sign In'),
                            ),
                          ],
                        ),
                        // Phone Number Tab
                        const Center(child: Text('Phone Number Login')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Don\'t have an account? Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     'assets/logo.png',
//                     height: 50,
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'GROUP HOLDING',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.orange,
//                       // letterSpacing: 2,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 50),
//             const Text(
//               'Welcome to App',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Here\'s a good place for a brief overview of the app or its key features.',
//               style: TextStyle(fontSize: 14),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),
//             DefaultTabController(
//               length: 2,
//               child: Column(
//                 children: [
//                   const TabBar(
//                     indicatorColor: Colors.orange,
//                     labelColor: Colors.orange,
//                     unselectedLabelColor: Colors.grey,
//                     tabs: [
//                       Tab(text: 'Employee'),
//                       Tab(text: 'Phone Number'),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 200,
//                     child: TabBarView(
//                       children: [
//                         // Employee Tab
//                         Column(
//                           children: [
//                             const TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'Email',
//                                 prefixIcon: Icon(Icons.email),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             const TextField(
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: 'Password',
//                                 prefixIcon: Icon(Icons.lock),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Checkbox(
//                                         value: false,
//                                         onChanged: (bool? value) {}),
//                                     const Text('Remember me?'),
//                                   ],
//                                 ),
//                                 TextButton(
//                                   onPressed: () {},
//                                   child: const Text('Forgot Password?'),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 20),
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 // primary: Colors.amber[700],
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 15),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: const Text('Sign In'),
//                             ),
//                           ],
//                         ),
//                         // Phone Number Tab
//                         const Center(child: Text('Phone Number Login')),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Center(
//               child: TextButton(
//                 onPressed: () {},
//                 child: const Text('Don\'t have an account? Sign Up'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
