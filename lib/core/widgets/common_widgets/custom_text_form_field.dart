import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final isOptional;

  const CustomTextField({Key key, this.controller, this.title, this.isOptional = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
          child: Text(
            '$title',
            style: TextStyle(fontSize: 14, fontFamily: 'Nunito'),
          ),
        ),
        TextFormField(
          controller: controller,
          validator: isOptional
              ? null
              : (value) => (value.isEmpty) ? "Please enter $title" : null,
          decoration: InputDecoration(
            border: OutlineInputBorder(gapPadding: 0.1),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
          ),
        ),
      ],
    );
  }
}

class CustomTextFieldNum extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final isOptional;

  const CustomTextFieldNum (
      {Key key, this.controller, this.title, this.isOptional = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
          child: Text(
            '$title',
            style: TextStyle(fontSize: 14, fontFamily: 'Nunito'),
          ),
        ),
        TextFormField(
          toolbarOptions: ToolbarOptions(
              copy: true, paste: true, selectAll: true, cut: true),
          controller: controller,
          validator: isOptional
              ? null
              : (value) => (value.isEmpty) ? "Please enter $title" : null,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(gapPadding: 0.1),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
          ),
        )
      ],
    );
  }
}

class CustomTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final String header;
  final isOptional;
  //remember to trim right text when authenticaticng

  const CustomTextFieldPassword(
      {Key key, this.controller, this.header, this.isOptional = false})
      : super(key: key);
  @override
  _CustomTextFieldPassword createState() => _CustomTextFieldPassword();
}

class _CustomTextFieldPassword extends State<CustomTextFieldPassword> {
  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
          child: Text(
            '${widget.header}',
            style: TextStyle(fontSize: 14, fontFamily: 'Nunito'),
          ),
        ),
        TextFormField(
          toolbarOptions: ToolbarOptions(
              copy: true, paste: true, selectAll: true, cut: true),
          controller: widget.controller,
          enableInteractiveSelection: false,
          obscureText: obscureText,
          validator: widget.isOptional
              ? null
              : (value) =>
                  (value.isEmpty) ? "Please enter ${widget.header}" : null,
          decoration: InputDecoration(
              border: OutlineInputBorder(gapPadding: 0.1),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              suffixIcon: GestureDetector(
                  onTap: () => _toggleObscure(),
                  child: Icon(Icons.remove_red_eye,
                      color: obscureText ? Colors.grey : Colors.black))),
        )
      ],
    );
  }

  _toggleObscure() {
    if (obscureText == true) {
      setState(() {
        obscureText = false;
      });
    } else {
      setState(() {
        obscureText = true;
      });
    }
  }
}
