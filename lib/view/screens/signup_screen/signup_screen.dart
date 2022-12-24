import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/view/screens/login_screen/login_screen.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_text_field.dart';
import '../country_selection_screen/countery_select_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Country? _selectedCountry;

  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                  width: double.infinity,
                ),
                Image.asset(AppAssets.terillaLogo),
                Image.asset(AppAssets.terillaName),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      AppStrings.SignUp,
                      style: const TextStyle(
                        color: AppColors.head,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.Name,
                  onChange: (v) {},
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.area,
                  onChange: (v) {},
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  prefix: SizedBox(
                    width: 80,
                    child: InkWell(
                      onTap: () async {
                        _selectedCountry = await Navigator.push<Country>(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const CountryCodeSelectScreen())) ??
                            _selectedCountry;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          if (_selectedCountry != null)
                            SizedBox(
                              width: 24,
                              height: 16,
                              child: Image.asset(
                                _selectedCountry!.flag,
                                package: countryCodePackageName,
                                fit: BoxFit.cover,
                              ),
                            ),
                          const SizedBox(width: 4),
                          const Icon(Icons.arrow_drop_down),
                          Container(
                            height: double.infinity,
                            width: 0.5,
                            color: AppColors.border,
                          )
                        ],
                      ),
                    ),
                  ),
                  hint: AppStrings.phonenumber,
                  onChange: (v) {},
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.password,
                  onChange: (v) {},
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.Confirmpassword,
                  onChange: (v) {},
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                MyButton(
                  onClick: () {},
                  title: AppStrings.SignUp,
                  width: double.infinity,
                ),
                SizedBox(height: 50.h,),
              ],
            ),
          ),
        ),
        bottomNavigationBar: TextButton(
          onPressed: () {
            AppNavigator.pushReplacement(context: context, screen: LoginScreen());
          },
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.head,
              ),
              children: [
                TextSpan(
                  text: AppStrings.Alreadyhaveanaccount,
                ),
                TextSpan(
                  text: AppStrings.SignIn,
                  style: const TextStyle(
                    color: AppColors.primary,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
