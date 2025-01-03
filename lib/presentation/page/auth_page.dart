import 'package:auth/auth.dart';
import 'package:auth/domain/entity/login_response/login_response.dart';
import 'package:auth/domain/usecase/auth_usecase.dart';
import 'package:auth/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:template/template.dart';

const String packageName = 'auth';

class SigInView extends StatefulWidget {
  const SigInView({
    super.key,
    required this.appName,
    required this.onLoginSuccess,
    this.onLoginError,
  });
  final String appName;
  final Function(LoginResponseEntity? loginResponse) onLoginSuccess;
  final Function(dynamic error)? onLoginError;

//add stye login here!
//........

  @override
  State<SigInView> createState() => _SigInViewState();
}

class _SigInViewState extends State<SigInView> {
  AuthUsecase _authUsecase = getIt();
  ThemeColorExtension? _themeColorExt;
  late TextTheme textTheme;
  final formkey = GlobalKey<FormState>();
  TextEditingController usernameFiled = TextEditingController(text: "");
  TextEditingController passwordField = TextEditingController(text: "");
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    _themeColorExt = Theme.of(context).extension<ThemeColorExtension>();
    textTheme = Theme.of(context).textTheme;
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _renderLogo(),
            Column(
              children: [
                _renderAppName(),
                const Gap(40),
                Column(
                  children: [
                    _renderFields(),
                    const Gap(22),
                    _renderButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
        if (isLoading) const CircularProgressIndicator(),
      ],
    );
  }

  Widget _renderAppName() {
    // return Container();
    return Align(
      alignment: Alignment.center,
      child: Text(
        widget.appName,
        style: textTheme.headlineLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: _themeColorExt?.ksPrimary,
        ),
      ),
    );
  }

  Widget _renderLogo() {
    return Icon(Icons.flutter_dash);
  }

  Widget _renderFields() {
    return Form(
      key: formkey,
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppTextField(
              controller: usernameFiled,
              hintText: 'Nhập tên tài khoản',
              prefixIcon: Assets.icons.icUser.svg(
                width: 12,
                package: packageName,
              ),
              validator: (p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Tên tài khoản không được để trống';
                }
              },
            ),
            const Gap(12),
            AppTextField(
              controller: passwordField,
              hintText: 'Nhập mật khẩu',
              prefixIcon: Assets.icons.icLock.svg(
                width: 12,
                package: packageName,
              ),
              obscureText: true,
              validator: (p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Mật khẩu không được để trống';
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderButton() {
    return PrimaryButton(
      width: 200,
      labelText: "Đăng nhập",
      onPressed: () {
        if (formkey.currentState!.validate()) {
          login(context);
        }
      },
    );
  }

  Future<void> login(BuildContext context) async {
    try {
      isLoading = true;
      var response = await _authUsecase.login(
        LoginRequestModel(
          username: usernameFiled.text,
          password: passwordField.text,
        ),
      );
      isLoading = false;
      if (response != null) {
        clearData();
        widget.onLoginSuccess(response);
      } else {
        widget.onLoginError?.call("Tài khoản hoặc mật khẩu không đúng!") ??
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tài khoản hoặc mật khẩu không đúng!"),
            ));
      }
    } catch (e) {
      isLoading = false;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
  }

  clearData() {
    usernameFiled.clear();
    passwordField.clear();
  }
}
