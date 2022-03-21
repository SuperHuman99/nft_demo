import 'package:flutter/material.dart';
import 'package:nft_demo/ui/constants.dart';
import 'package:nft_demo/ui/widgets/fade_in_animation.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton(
      {Key? key, required this.buttonText, required this.onPressed, this.width, this.color})
      : super(key: key);

  final Function onPressed;
  final String buttonText;
  final double? width;
  final Color? color;

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        child: FadeInAnimation(
          delay: 1000,
          child: Text(
            widget.buttonText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: widget.color ?? secondaryColor,
        ),
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                color: secondaryColor.withOpacity(0.4),
                offset: const Offset(-4, -4),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: const Offset(4, 4),
                blurRadius: 15.0),
          ]),
    );
  }
}
