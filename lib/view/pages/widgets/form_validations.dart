String? validateName(String? value) {
  if (value!.isEmpty) {
    return "Please Enter Full Name";
  } else {
    value = value.trim();
    if (value.length < 3) {
      return 'Name must be more than 2 charater';
    }
    return null;
  }
}

String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value!)) {
    return 'Enter Valid Email';
  } else {
    return null;
  }
}

password(String? txt) {
  if (txt == null || txt.isEmpty) {
    return "Invalid Password!";
  }
  if (txt.length < 8) {
    return "Password must has 8 characters";
  }
  if (txt.length > 15) {
    return "Password Must less Then 15 characters";
  }
  if (!txt.contains(RegExp(r'[A-Z]'))) {
    return "Password must has uppercase";
  }
  if (!txt.contains(RegExp(r'[0-9]'))) {
    return "Password must has digits";
  }
  if (!txt.contains(RegExp(r'[a-z]'))) {
    return "Password must has lowercase";
  }
  if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
    return "Password must has special characters";
  } else {
    return null;
  }
}

String? validateMobile(String? value) {
  if (value!.isNotEmpty) {
    value = value.trim();
    if (value.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  } else {
    return 'Mobile Number must be of 10 digit';
  }
}
