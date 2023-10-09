import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:local_marketplace/notifiers/app_notifier.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/widget/my_button.dart';
import 'package:local_marketplace/screens/widget/my_text_input.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:local_marketplace/services/user_auth/auth.service.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final Widget svg = SvgPicture.asset("assets/svgs/signup.svg",
      height: 150,
      alignment: Alignment.topRight,
      colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
      semanticsLabel: 'Sign Up');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: svg,
                    ),
                    Text(
                      "Get On Board !",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Create your profile to start your journey",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: MyTextInput(
                            prefixIcon: Icons.email,
                            label: "Email",
                            textController: email,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: MyTextInput(
                            prefixIcon: Icons.password,
                            label: "Password",
                            textController: password,
                            obscureText: true,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 305,
                          height: 50,
                          child: MyButton(
                            onPressed: () async {
                              try {
                                final AuthService _authService = AuthService();
                                context.loaderOverlay.show();
                                Map<String, dynamic> data = {
                                  "password": password.text,
                                  "email": email.text
                                };

                                print(data);

                                //send data to backend
                                final Map<String, dynamic> result =
                                    await _authService.login(data);
                                print(result);
                                getIt<AppNotifier>().currentToken =
                                    result["accessToken"];
                                print(getIt<AppNotifier>().currentToken);

                                await getIt<AppNotifier>().init();
                                
                                print("done called init");
                                context.loaderOverlay.hide();
                                Navigator.of(context).pushNamed(MainRoute);
                              } catch (e) {
                                print(e);
                                context.loaderOverlay.hide();
                                //show error message
                              }
                            
                            },
                            backgroundColor: Colors.green[600],
                            label: "Login",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
