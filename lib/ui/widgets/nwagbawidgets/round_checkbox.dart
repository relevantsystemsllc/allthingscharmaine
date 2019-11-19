
import 'package:allthingscharmaine/utils/my_colors.dart';
import 'package:flutter/material.dart';

class RoundCheckbox extends StatefulWidget {
  bool istrue;
  RoundCheckbox({Key key, @required this.istrue});
  @override
  _RoundCheckboxState createState() => _RoundCheckboxState();
}

class _RoundCheckboxState extends State<RoundCheckbox> {
  bool _value;
  @override
  void initState() {
    // TODO: implement initState
    _value = widget.istrue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
            
          });
        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _value ? MyColors().pinkActive : Colors.white,
              border: _value
                  ? Border.all(color: Colors.white)
                  :Border.all(color: MyColors().pinkActive)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: _value
                ? Icon(
                    Icons.check,
                    size: 15.0,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.check,
                    size: 15.0,
                    color: MyColors().pinkActive,
                  ),
          ),
        ),
      ),
    );
  }
}
