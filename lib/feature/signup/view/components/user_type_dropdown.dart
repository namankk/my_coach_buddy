import 'package:flutter/material.dart';

class UserTypeDropdown extends StatefulWidget {
  const UserTypeDropdown({super.key, required this.onChanged});
  final Function onChanged;

  @override
  State<UserTypeDropdown> createState() => _UserTypeDropdownState();
}

class _UserTypeDropdownState extends State<UserTypeDropdown> {
  String? _selectedUserType;

  final List<String> _userTypes = ['Coach', 'Student'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedUserType,
      decoration: const InputDecoration(
        labelText: 'Select User Type',
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),

      ),
      items: _userTypes.map((type) {
        return DropdownMenuItem(
          value: type,
          child: Text(type),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedUserType = value;
        });
        widget.onChanged(value);
      },
      validator: (value) => value == null ? 'Please select a user type' : null,
    );
  }
}
