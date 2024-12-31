import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../utils/enums.dart';

class GenderSelectionWidget extends StatefulWidget {
  final void Function(GenderType genderType) onSelection;
  final GenderType initialGender;

  const GenderSelectionWidget({
    super.key,
    required this.onSelection,
    required this.initialGender,
  });

  @override
  createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  GenderType? _selectedGender;

  void _updateSelectedGender(GenderType gender) {
    setState(() {
      _selectedGender = gender;
    });
    widget.onSelection(gender);
  }

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.initialGender;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                _updateSelectedGender(GenderType.male);
              },
              child: Container(
                height: 55,
                width: width / 2,
                decoration: BoxDecoration(
                    color: _selectedGender == GenderType.male
                        ? ColorName.primaryColor
                        : Colors.grey.shade400,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                child: Center(
                  child: Text(
                    'Male',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _selectedGender == GenderType.male
                          ? Colors.white
                          : Colors.black,
                      fontWeight: _selectedGender == GenderType.male
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                _updateSelectedGender(GenderType.female);
              },
              child: Container(
                height: 55,
                width: width / 2,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: _selectedGender == GenderType.female
                        ? ColorName.primaryColor
                        : Colors.grey.shade400,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Text(
                  'Female',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _selectedGender == GenderType.female
                        ? Colors.white
                        : Colors.black,
                    fontWeight: _selectedGender == GenderType.female
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
