part of 'index.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        body: SafeArea(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              children: [
                Center(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: _primaryColor.withOpacity(.08),
                          borderRadius: const BorderRadius.all(Radius.circular(8))),
                      child: const Icon(
                        Icons.drafts,
                        color: _primaryColor,
                        size: 72,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  "Check your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 16),
                const FractionallySizedBox(
                  widthFactor: .75,
                  child: Text(
                    "We have sent a password recovery instrutions to your email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      primary: _primaryColor,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    child: const Text(
                      "Open email app",
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 32),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page3()),
                    );
                  },
                  child: const Text(
                    "Skip, I'll confirm later",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 148),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Did not receive the email? check your spam filter\n",
                    style: const TextStyle(color: Colors.black, height: 1.6),
                    children: [
                      const TextSpan(
                        text: "Or ",
                      ),
                      TextSpan(
                        text: "Try another email address",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("TAPP");
                          },
                        style: const TextStyle(
                            color: _primaryColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
