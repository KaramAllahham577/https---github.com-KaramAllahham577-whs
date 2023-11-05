import 'package:flutter/material.dart';

class MyDropDownMenu extends StatefulWidget {
  final List<String> typeList;
  final String initialSelectedItem;
  final String hintText;
  final Color enabledBorderColor;

  MyDropDownMenu({
    required this.typeList,
    required this.initialSelectedItem,
    required this.hintText,
    required this.enabledBorderColor,
  });

  @override
  _MyDropDownMenuState createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {
  String? selectedItem;
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initialSelectedItem.isNotEmpty
        ? widget.initialSelectedItem
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            onTap: () {
              setState(() {
                selectedItem = selectedItem ??
                    widget.typeList[
                    0]; // Set selectedItem to the first item in the list if it's null.
              });
            },
            hint: selectedItem == null
                ? Text(
              widget.hintText,
              style: const TextStyle(color: Colors.white),
            )
                : null,
            dropdownColor: const Color(0xff24292f),
            menuMaxHeight: 100,
            iconSize: 32,
            iconEnabledColor: Colors.white,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xff53676D),
                  width: 2.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: widget.enabledBorderColor,
                  width: 2.5,
                ),
              ),
            ),
            value: selectedItem,
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 0,
            style: const TextStyle(
              fontFamily: "Dm Sans",
              fontSize: 17.75,
              color: Colors.white,
            ),
            onChanged: (newType) {
              setState(() {
                selectedItem = newType;
              });
            },
            items: [
              ...widget.typeList.map<DropdownMenuItem<String>>((value) {
                if (selectedItem == null && value == widget.hintText) {
                  return DropdownMenuItem<String>(
                    value: value,
                    // Set the value to the hint text if it's the hint item.
                    child: const SizedBox.shrink(),
                  );
                }
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ],
          ),
          if (selectedItem == widget.hintText)
            const SizedBox(height: 10),
          if (selectedItem == widget.hintText)
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: 'Enter a new value',
                hintStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xff53676D),
                    width: 2.5,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: widget.enabledBorderColor,
                    width: 2.5,
                  ),
                ),
              ),
              style: const TextStyle(
                fontFamily: "Dm Sans",
                fontSize: 17.75,
                color: Colors.white,
              ),
              onChanged: (newValue) {
                setState(() {
                  selectedItem = newValue;
                });
              },
            ),
        ],
      ),
    );
  }
}
