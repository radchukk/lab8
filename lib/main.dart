import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 8 Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3B5998)),
        useMaterial3: true,

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF3B5998),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

// АВТОРИЗАЦІЯ (Login)
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  void _showStubDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Message"),
        content: const Text("Need to implement"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 60),
                const FlutterLogo(size: 100),
                const SizedBox(height: 20),
                const Text("Flutter", style: TextStyle(fontSize: 28, color: Colors.grey)),
                const SizedBox(height: 40),

                _buildLabeledTextField("Email:", "Enter email", false),
                const SizedBox(height: 15),
                _buildLabeledTextField("Password:", "Enter password", true),
                const SizedBox(height: 20),

                // --- ЗМІНИ ТУТ ---
                // Спочатку кнопка Login (синя)
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _showStubDialog();
                    }
                  },
                  child: const Text("Login"),
                ),

                const SizedBox(height: 10),

                // Потім кнопка Sign up (біла, перехід на реєстрацію)
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                  },
                  child: const Text("Sign up", style: TextStyle(color: Colors.black)),
                ),
                // ----------------

                const SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                  },
                  child: const Text("Reset password", style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// РЕЄСТРАЦІЯ (Sign Up)
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  void _showStubDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Message"),
        content: const Text("Need to implement"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 60),
                const FlutterLogo(size: 80),
                const SizedBox(height: 10),
                const Text("Flutter", style: TextStyle(fontSize: 24, color: Colors.grey)),
                const SizedBox(height: 10),
                const Text("Sign up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),

                _buildLabeledTextField("Name:", "Enter name", false),
                const SizedBox(height: 15),
                _buildLabeledTextField("Email:", "Enter email", false),
                const SizedBox(height: 15),
                _buildLabeledTextField("Password:", "Enter password", true),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _showStubDialog();
                    }
                  },
                  child: const Text("Sign up"),
                ),

                const SizedBox(height: 10),

                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ВІДНОВЛЕННЯ ПАРОЛЮ (Reset Password)
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  void _showStubDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Message"),
        content: const Text("Need to implement"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 60),
              const FlutterLogo(size: 80),
              const SizedBox(height: 10),
              const Text("Flutter", style: TextStyle(fontSize: 24, color: Colors.grey)),
              const SizedBox(height: 10),
              const Text("Reset Password", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),

              _buildLabeledTextField("Email:", "Enter email", false),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showStubDialog();
                  }
                },
                child: const Text("Reset"),
              ),

              const SizedBox(height: 10),

              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  Допоміжний віджет для полів вводу
Widget _buildLabeledTextField(String label, String hint, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 5),
      TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter text';
          }
          return null;
        },
      ),
    ],
  );
}