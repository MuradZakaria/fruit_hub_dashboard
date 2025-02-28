import 'package:flutter/material.dart';


class IsFeatureCheckBox extends StatefulWidget {
  const IsFeatureCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsFeatureCheckBox> createState() => _IsFeatureCheckBoxState();
}

class _IsFeatureCheckBoxState extends State<IsFeatureCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            activeColor: Colors.amber,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
              widget.onChanged(value!);
            },
          ),
        ),
         const Text(
               'Is Feature Check?',
                style: TextStyle(color:Colors.black),
              ),
      ],
    );
  }
}
