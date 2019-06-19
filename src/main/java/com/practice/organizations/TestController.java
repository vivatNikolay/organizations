package com.practice.organizations;

import com.practice.organizations.entities.Organization;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
    @Autowired
    private OrgRepo orgRepo;

    @GetMapping("/test")
    public @ResponseBody
    Iterable<Organization> test(){
        Organization org = new Organization();
        org.setType("Юр лицо");
        org.setFullName("ОАО Газпром");
        org.setShortName("Газпром");
        org.setRegion("Москва, Россия");
        org.setUNP(123123123);
        org.setUNPF(321321321);
        orgRepo.save(org);
        return orgRepo.findAll();
    }

}
