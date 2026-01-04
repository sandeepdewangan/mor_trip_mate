import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mor_trip_mate/core/utils.dart';

class AuthSigninButton extends StatelessWidget {
  const AuthSigninButton({
    super.key,
    required this.title,
    required this.logo,
    required this.onCallback,
  });

  final String title;
  final String logo;
  final VoidCallback onCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: onCallback,
            icon: SvgPicture.asset(
              logo,
              width: 30,
              colorFilter: title.contains('Apple')
                  ? ColorFilter.mode(
                      isDarkMode(context) ? Colors.white : Colors.black,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: Text(title),
          ),
        ),
      ],
    );
  }
}
