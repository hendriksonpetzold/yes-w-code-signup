import 'package:flutter/material.dart';
import 'package:yes_w_code_project/page/component/button.dart';

class ErrorDialog extends Dialog {
  final String message;
  final BuildContext context;
  ErrorDialog({Key? key, required this.message, required this.context})
      : super(
          key: key,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: 250,
            height: 260,
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  message,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Button(
                    buttonName: 'OK',
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
          ),
        );
}
