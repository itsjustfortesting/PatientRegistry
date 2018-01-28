package com.mmalz.validator;

import com.mmalz.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidUsernameValidator implements ConstraintValidator<ValidUsername, String> {

    @Autowired
    private UsersService usersService;

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        if (usersService.getUser(s) != null) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public void initialize(ValidUsername validUsername) {
    }
}
