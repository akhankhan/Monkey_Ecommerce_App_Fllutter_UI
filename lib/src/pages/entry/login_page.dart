part of pages;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Column(
            children: [
              const LoginRegisterHeader(
                title: 'Login',
                subTitle: 'Add your details to login',
              ),
              const CustomTextFormField(labelText: 'Your Email'),
              SizedBox(height: 60.h),
              const CustomTextFormField(labelText: 'Password'),
              SizedBox(height: 60.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, kRouteMain);
                },
                child: const Text('Login'),
              ),
              SizedBox(height: 60.h),
              Text(
                'Forgot your password?',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryFontColor,
                    ),
              ),
              SizedBox(height: 60.h),
              Text(
                'Or Login with',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryFontColor,
                    ),
              ),
              SizedBox(height: 80.h),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.facebookF),
                label: const Text('Login with Facebook'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0XFF3b5998),
                ),
              ),
              SizedBox(height: 60.h),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.googlePlusG),
                label: const Text('Login with Google'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0XFFdb4a39),
                ),
              ),
              const Expanded(
                child: SizedBox.shrink(),
              ),
              const LoginRegisterFooter(
                question: 'Don\'t have an Account?',
                actionText: ' Sign Up',
                actionRoute: kRouteRegister,
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
