import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';

class InstractionsBody extends StatelessWidget {
  const InstractionsBody({
    super.key,
    required this.oneMealModel,
  });
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    final List<InstructionStep> instractionList = oneMealModel.instructions;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      child: ListView.builder(
        itemCount: instractionList.length,
        itemBuilder: (context, index) {
          return InstractionItem(
            instructionStep: instractionList[index],
          );
        },
      ),
    );
  }
}

class InstractionItem extends StatelessWidget {
  const InstractionItem({
    super.key,
    required this.instructionStep,
  });
  final InstructionStep instructionStep;
  @override
  Widget build(BuildContext context) {
    // final String imageUrl = ingredient.imageUrl;
    // bool imageState = false;
    // if (imageUrl.startsWith('http')) {
    //   imageState = true;
    // }

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Flexible(
            child: Text(
              '${instructionStep.number}) ${instructionStep.step}',
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          // SizedBox(
          //   height: 2,
          //   width: 2,
          //   child: imageState
          //       ? Image.network(
          //           imageUrl,
          //           // scale: 1.0,
          //         )
          //       : Image.asset(
          //           'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
          //           // scale: 1.0,
          //         ),
          // )
        ],
      ),
    );
  }
}
