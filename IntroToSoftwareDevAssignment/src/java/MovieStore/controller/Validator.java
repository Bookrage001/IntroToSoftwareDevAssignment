package MovieStore.controller;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator implements Serializable {

    private String emailPattern = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
    private String namePattern = "[a-zA-Z]*";
    private String passwordPattern = "[a-z]{6,}[0-9]+";
    private String IDPattern = "[0-9]{5,6}";
    private String postcodePattern = "[0-9]+";

    public Validator() {
    }

    public boolean validate(String pattern, String input) {
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }

    public boolean checkEmpty(String email, String password) {
        return email.isEmpty() || password.isEmpty();
    }

    public boolean validateEmail(String email) {
        return validate(emailPattern, email);
    }

    public boolean validatePostcode(String postcode) {
        if (postcode.length() < 4) {
            return false;
        } else {
            return validate(postcodePattern, postcode);
        }
    }

    public boolean validateID(String ID) {
        return validate(IDPattern, ID);
    }

    public boolean validateName(String name) {
        return validate(namePattern, name);
    }

    public boolean validatePassword(String password) {
        return validate(passwordPattern, password);
    }
}
