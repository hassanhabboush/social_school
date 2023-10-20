import 'package:flutter/material.dart';
import 'package:social_school/screens/widgets/code_text_fielde.dart';

class ChatlockScreen extends StatefulWidget {
  const ChatlockScreen({super.key});

  @override
  State<ChatlockScreen> createState() => _ChatlockScreenState();
}

class _ChatlockScreenState extends State<ChatlockScreen> {
  late TextEditingController _passwordEditingController;
  late TextEditingController _passwordConfirmationEditingController;

  late TextEditingController _firstCodeEditingController;
  late TextEditingController _secondCodeEditingController;
  late TextEditingController _thirdCodeEditingController;
  late TextEditingController _fourthCodeEditingController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordEditingController = TextEditingController();
    _passwordConfirmationEditingController = TextEditingController();

    _firstCodeEditingController = TextEditingController();
    _secondCodeEditingController = TextEditingController();
    _thirdCodeEditingController = TextEditingController();
    _fourthCodeEditingController = TextEditingController();

    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordEditingController.dispose();
    _passwordConfirmationEditingController.dispose();
    _firstCodeEditingController.dispose();
    _secondCodeEditingController.dispose();
    _thirdCodeEditingController.dispose();
    _fourthCodeEditingController.dispose();

    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                'This chat is locked',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                    fontSize: 29,
                    color: Color(0xff21A28B)),
              ),
              const SizedBox(height: 41),
              const Image(
                image: AssetImage('assets/icons/lock_2.png'),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CodeTextField(
                        codeEditingController: _firstCodeEditingController,
                        focusNode: _firstFocusNode,
                        onChanded: (String value) {
                          if (value.isNotEmpty) _secondFocusNode.requestFocus();
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CodeTextField(
                        codeEditingController: _secondCodeEditingController,
                        focusNode: _secondFocusNode,
                        onChanded: (String value) {
                          if (value.isNotEmpty) {
                            _thirdFocusNode.requestFocus();
                          } else {
                            _firstFocusNode.requestFocus();
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CodeTextField(
                        codeEditingController: _thirdCodeEditingController,
                        focusNode: _thirdFocusNode,
                        onChanded: (String value) {
                          if (value.isNotEmpty) {
                            _fourthFocusNode.requestFocus();
                          } else {
                            _secondFocusNode.requestFocus();
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CodeTextField(
                        codeEditingController: _fourthCodeEditingController,
                        focusNode: _fourthFocusNode,
                        onChanded: (String value) {
                          if (value.isNotEmpty) _thirdFocusNode.requestFocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 27),
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: SizedBox(
                  height: 140,
                  width: 336,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Reset password",
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 19,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      const Text(
                        "Enter your account password",
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 15,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: const Color(0xff21A28B).withOpacity(0.20),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.lock_outlined,
                                  color: Color(0xff21A28B),
                                )),
                          ),
                          const SizedBox(width: 9),
                          SizedBox(
                            width: 234,
                            child: TextField(
                              obscuringCharacter: '*',
                              obscureText: true,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff91BFB7),
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                hintStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff91BFB7),
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                                hintText: '******',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color(0xff21A28B),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color(0xff21A28B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                actions: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/notification_screen');
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor:
                              const Color(0xff21A28B).withOpacity(0.15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                          minimumSize: const Size(129, 41)),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xff21A28B),
                          fontSize: 19,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text(
            'Did you forget the password?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'poppins',
                fontSize: 18,
                color: const Color(0xff21A28B).withOpacity(0.40)),
          ),
        ),
      ),
    );
  }
}
