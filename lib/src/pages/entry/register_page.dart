part of pages;

class RegisterPage extends StatelessWidget {
  final double spacing = 60.h;
  RegisterPage({Key? key}) : super(key: key);

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
                title: 'Sign Up',
                subTitle: 'Add your details to sign up',
              ),
              const CustomTextFormField(labelText: 'Your Name'),
              SizedBox(height: spacing),
              const CustomTextFormField(labelText: 'Email'),
              SizedBox(height: spacing),
              const CustomTextFormField(labelText: 'Mobile No'),
              SizedBox(height: spacing),
              const CustomTextFormField(labelText: 'Address'),
              SizedBox(height: spacing),
              const CustomTextFormField(labelText: 'Password'),
              SizedBox(height: spacing),
              const CustomTextFormField(labelText: 'Confirm Password'),
              SizedBox(height: spacing),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
              const Expanded(
                child: SizedBox.shrink(),
              ),
              const LoginRegisterFooter(
                question: 'Already have account?',
                actionText: 'Login',
                actionRoute: kRouteLogin,
              ),
              SizedBox(height: spacing),
            ],
          ),
        ),
      ),
    );
  }
}
