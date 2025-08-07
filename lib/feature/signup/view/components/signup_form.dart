import 'package:coach_buddy/core/svg_icons/svg_icons.dart';
import 'package:coach_buddy/feature/signin/view/signin_screen.dart';
import 'package:coach_buddy/feature/signup/view/components/user_type_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(children: [
              Expanded(
                child: TextFormField(
                  onSaved: (password) {},
                  onChanged: (password) {},
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter first name",
                      labelText: "First Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintStyle: const TextStyle(color: Color(0xFF757575)),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      suffix: SvgPicture.string(
                        firstNameIcon,
                      ),
                      border: authOutlineInputBorder,
                      enabledBorder: authOutlineInputBorder,
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  onSaved: (password) {},
                  onChanged: (password) {},
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter last name",
                      labelText: "Last Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintStyle: const TextStyle(color: Color(0xFF757575)),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      suffix: SvgPicture.string(
                        lastNameIcon,
                      ),
                      border: authOutlineInputBorder,
                      enabledBorder: authOutlineInputBorder,
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
                ),
              ),
            ],),
          ),
          TextFormField(
            onSaved: (email) {},
            onChanged: (email) {},
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                hintText: "Enter your phone No.",
                labelText: "Phone No.",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  mailIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: UserTypeDropdown(onChanged: (value){
              debugPrint("UserType is $value");
            }),
          ),
          TextFormField(
            onSaved: (email) {},
            onChanged: (email) {},
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  mailIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: TextFormField(
              onSaved: (password) {},
              onChanged: (password) {},
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintStyle: const TextStyle(color: Color(0xFF757575)),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  suffix: SvgPicture.string(
                    lockIcon,
                  ),
                  border: authOutlineInputBorder,
                  enabledBorder: authOutlineInputBorder,
                  focusedBorder: authOutlineInputBorder.copyWith(
                      borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
            ),
          ),
          TextFormField(
            onSaved: (password) {},
            onChanged: (password) {},
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Re-enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  lockIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                    borderSide:  BorderSide(color: Theme.of(context).primaryColor))),
          ),

          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              context.go("/${SignInScreen.routeName}");

            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 48),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            child: const Text("Continue"),
          )
        ],
      ),
    );
  }
}

const authOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF757575)),
  borderRadius: BorderRadius.all(Radius.circular(100)),
);