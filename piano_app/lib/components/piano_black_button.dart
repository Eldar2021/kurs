import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({Key? key, this.visible = true}) : super(key: key);
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        width: 63,
        height: 150,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.black,
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed) ? const Color.fromARGB(255, 71, 70, 70) : null;
                },
              ),
            ),
            onPressed: () {},
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'f3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
