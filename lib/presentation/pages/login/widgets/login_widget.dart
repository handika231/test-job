import 'package:flutter/material.dart';

import 'social_widget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 40,
        right: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  value: false,
                  onChanged: (value) {},
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Remember me'),
                ),
              ),
              const Expanded(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
            ),
            onPressed: () {},
            child: const Text(
              "Login",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Or Connect With',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const SocialWidget()
        ],
      ),
    );
  }
}
