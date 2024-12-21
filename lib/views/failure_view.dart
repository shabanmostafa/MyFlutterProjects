import 'package:flutter/widgets.dart';

class FailureView extends StatelessWidget {
  const FailureView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Something Wrong 😔😔",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'searching again 🔍',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}