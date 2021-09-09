import 'package:validators/validators.dart';

//value엔 적은 값이 들어간다.
Function validateUsername = (String? value) {
  if (value!.isEmpty) {
    return "Username cannot be empty!";
  } else if (!isAlphanumeric(value)) {
    return "Only Alphanumeric Characters can be Entered!!";
  } else if (value.length > 12) {
    return "Too much long!!";
  } else if (value.length < 4) {
    return "Too much short!!";
  } else {
    return null;
  }
};

Function validatePassword = (String? value) {
  if (value!.isEmpty) {
    return "Password cannot be empty!";
  } else if (!isAlphanumeric(value)) {
    return "Only Alphanumeric Characters can be Entered!!";
  } else if (value.length > 20) {
    return "Too much long!!";
  } else if (value.length < 4) {
    return "Too much short!!";
  } else {
    return null;
  }
};

Function validateEmail = (String? value) {
  if (value!.isEmpty) {
    return "Email cannot be empty!";
  } else if (!isEmail(value)) {
    return "The email is mot a valid email address!";
  } else if (value.length > 40) {
    return "Too much long!!";
  } else {
    return null;
  }
};

Function validateTitle = (String? value) {
  if (value!.isEmpty) {
    return "Title cannot be empty!";
  } else if (value.length > 40) {
    return "Too much long!!";
  } else {
    return null;
  }
};
