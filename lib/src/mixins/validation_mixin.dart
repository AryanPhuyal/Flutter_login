class ValidationMixin {
  String emailValidation(String value) {
    if (!value.contains("@")) {
      return "Please Enter Valid Password";
    }
    return null;
  }

  String passwordValidate(String value) {
    if (value.length < 4) {
      return "Password must be greater than 3";
    }
    return null;
  }
}
