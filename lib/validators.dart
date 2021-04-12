library auto_validate;

export 'auto_validate.dart';


bool isUserNameValid(String input){
  return AutoValidate.userNameValidate.hasMatch(input);
}

bool isUrlValid(String input){
  return AutoValidate.urlValidate.hasMatch(input);
}
bool isUrlValid(String input){
  return AutoValidate.passwordStrongValidate.hasMatch(input);
}
