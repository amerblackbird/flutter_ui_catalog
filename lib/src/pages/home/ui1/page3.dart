part of 'index.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: _primaryColor,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: _primaryColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme.of(context).copyWith(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Back",
            style: TextStyle(color: Colors.black),
          ),
          titleSpacing: 0,
          centerTitle: false,
          leading: IconButton(
            icon: Transform.rotate(
                angle: -math.pi, child: const Icon(Icons.arrow_right_alt)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {},
            )
          ],
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text("Create new password",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text(
                "Your new password must be different from previous used password",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 24),
              const Text(
                "Password",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _primaryColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _dangerColor),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _dangerColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _editTextBorderColor),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requried";
                  }
                  if (value.length < 8) {
                    return "Must be at least 8 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                "Confirm password",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 4),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _primaryColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _dangerColor),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _dangerColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: _editTextBorderColor),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "This field is requried";
                  }
                  if (value.length < 8) {
                    return "Must be at least 8 characters";
                  }

                  if (_confirmPasswordController.text !=
                      _passwordController.text) {
                    return "Both password must match";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    primary: _primaryColor,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18)),
                child: const Text(
                  "Send Instructions",
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    /// Submit form
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
