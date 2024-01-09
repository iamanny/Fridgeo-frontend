import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: proba(),
    );
  }
}

class proba extends StatefulWidget {
  @override
  _probaState createState() => _probaState();
}

class _probaState extends State<proba> {
  String selectedRadioTile = 'Option 1'; // Используем String вместо int

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Радиокнопки и Всплывающее окно'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showModalBottomSheet();
          },
          child: Text('Показать всплывающее окно'),
        ),
      ),
    );
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Выберите опцию:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  CustomRadio(
                    value: 'Option 1',
                    groupValue: selectedRadioTile,
                    onChanged: (value) {
                      setState(() {
                        selectedRadioTile = value!;
                      });
                    },
                  ),
                  CustomRadio(
                    value: 'Option 2',
                    groupValue: selectedRadioTile,
                    onChanged: (value) {
                      setState(() {
                        selectedRadioTile = value!;
                      });
                    },
                  ),
                  // Добавьте другие радиокнопки при необходимости
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Применить'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class CustomRadio extends StatefulWidget {
  String value;
  String groupValue;
  Color? color;
  Color? selectColor;
  void Function(String?)? onChanged;

  CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    this.color = const Color(0xFFE2DFDF),
    this.selectColor = const Color(0xFF54DD01),
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          widget.onChanged!(widget.value);
        } else {
          widget.onChanged!(null);
        }
      },
      child: Container(
        height: 16,
        width: 16,
        padding: EdgeInsets.zero,
        decoration: ShapeDecoration(
          color: Color(0xFFE2DFDF),
          shape: const CircleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFAFAFAF)),
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.zero,
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: widget.value == widget.groupValue
                  ? widget.selectColor
                  : widget.color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
