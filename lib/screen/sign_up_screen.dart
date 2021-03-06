import 'package:flutter/material.dart';
import 'package:speed_code_pet_app/constant/app_colors.dart';
import 'package:speed_code_pet_app/screen/pet_profile_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).viewPadding.top,
            bottom: MediaQuery.of(context).viewPadding.bottom,
            left: 32,
            right: 32,
          ),
          child: Column(
            children: [
              const SizedBox(height: 48),
              Image.asset(
                'assets/image/animal.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  children: [
                    Text(
                      'Let\'s Get Started!',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Create an account and manage your pet\'s profile',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 13,
                          ),
                    ),
                  ],
                ),
              ),
              _textField(
                icon: Icons.account_circle_outlined,
                text: 'Anawilliam@gmail.com',
              ),
              const SizedBox(height: 8),
              _textField(
                icon: Icons.mail_outlined,
                text: 'Email Address',
              ),
              const SizedBox(height: 8),
              _textField(
                icon: Icons.lock_outlined,
                text: 'Password',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PetProfileScreen(),
                      ),
                      (_) => false,
                    );
                  },
                  child: Text(
                    'CREATE ACCOUNT',
                    style: Theme.of(context).textTheme.button.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Login here'),
                    style: TextButton.styleFrom(
                      primary: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField({
    @required IconData icon,
    @required String text,
  }) {
    return Builder(
      builder: (context) => TextField(
        cursorColor: AppColors.blue,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.sheet,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blue,
            ),
            borderRadius: BorderRadius.all(
              const Radius.circular(12),
            ),
          ),
          contentPadding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 24,
            right: 16,
          ),
          prefixIcon: Icon(
            icon,
            color: AppColors.text,
          ),
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
