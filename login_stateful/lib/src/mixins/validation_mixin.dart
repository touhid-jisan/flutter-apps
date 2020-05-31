class ValidationMixin {
  String validateEmail(String value) {
    //return null if valid
    //string with the error msg if invalid
    if(!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }
  String validatePassword(String value) {
    if(value.length < 7) {    
      return ('Pasword  must be atleast 7 char');
    }      
    return null;
  }
}