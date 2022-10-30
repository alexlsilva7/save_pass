import 'package:flutter/material.dart';
import 'package:save_pass/src/model/password_model.dart';
import 'package:save_pass/ui/colors.dart';
import 'package:save_pass/ui/text_styles.dart';

class PasswordListTile extends StatefulWidget {
  const PasswordListTile({super.key, required this.passwordService});

  final PasswordModel passwordService;
  @override
  State<PasswordListTile> createState() => _PasswordListTileState();
}

class _PasswordListTileState extends State<PasswordListTile> {
  bool isPassowrdVisible = false;
  late final String username;
  late final String password;

  @override
  void initState() {
    username = widget.passwordService.username;
    password = widget.passwordService.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          isPassowrdVisible ? Icons.visibility : Icons.visibility_off,
          color: isPassowrdVisible ? AppColors.primary : AppColors.gray500,
        ),
        onPressed: () {
          setState(() {
            isPassowrdVisible = !isPassowrdVisible;
          });
        },
      ),
      title: AnimatedDefaultTextStyle(
        style: AppTextStyle.bodyText2.copyWith(
          color: isPassowrdVisible ? AppColors.gray200 : AppColors.white,
          fontSize: isPassowrdVisible ? 14 : 16,
        ),
        duration: const Duration(milliseconds: 300),
        child: const Text('Plataforma Rocketseat'),
      ),
      subtitle: AnimatedDefaultTextStyle(
        style: AppTextStyle.subtitle2.copyWith(
          color: isPassowrdVisible ? AppColors.primary : AppColors.gray500,
          fontSize: isPassowrdVisible ? 16 : 14,
        ),
        duration: const Duration(milliseconds: 300),
        child: Text(
          isPassowrdVisible ? password : username,
        ),
      ),
    );
  }
}
