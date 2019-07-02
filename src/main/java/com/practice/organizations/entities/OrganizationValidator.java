package com.practice.organizations.entities;


import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class OrganizationValidator implements Validator {
    @Override
    public boolean supports(Class clazz) {
        return Organization.class.equals(clazz);
    }

    @Override
    public void validate(Object obj, Errors e) {
        Pattern pattern;
        Matcher matcher;
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "fullName", "Full name is empty", "Full name is empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "shortName", "Short name is empty", "Short name is empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "UNP", "UNP is empty", "UNP is empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(e, "UNPF", "UNPF is empty", "UNPF is empty");
        Organization org = (Organization) obj;

        pattern = Pattern.compile("^\\d{9}$");
        matcher = pattern.matcher(org.getUNP());
        if (!matcher.find()){
            e.rejectValue("UNP", "UNP incorrect length", "UNP incorrect length");
        }

        matcher = pattern.matcher(org.getUNPF());
        if (!matcher.find()){
            e.rejectValue("UNPF", "UNPF incorrect length", "UNPF incorrect length");
        }

        pattern = Pattern.compile("(\\d+)");
        matcher = pattern.matcher(org.getOKOGU());
        if (!matcher.find()){
            e.rejectValue("OKOGU", "OKOGU incorrect length", "OKOGU incorrect length");
        }

        matcher = pattern.matcher(org.getCodeOKFS());
        if (!matcher.find()){
            e.rejectValue("codeOKFS", "Code OKFS incorrect length", "Code OKFS incorrect length");
        }

        matcher = pattern.matcher(org.getCodeOKAD());
        if (!matcher.find()){
            e.rejectValue("codeOKAD", "Code OKAD incorrect length", "Code OKAD incorrect length");
        }

        matcher = pattern.matcher(org.getIdHeadOrganization());
        if (!matcher.find()){
            e.rejectValue("idHeadOrganization", "ID head org incorrect length", "ID head org incorrect length");
        }

        pattern = Pattern.compile("^\\d{10}$");
        matcher = pattern.matcher(org.getCodeCOATO());
        if (!matcher.find()){
            e.rejectValue("codeCOATO", "Code COATO incorrect length", "Code COATO incorrect length");
        }
    }
}
