package com.practice.organizations;

import com.practice.organizations.entities.Organization;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Optional;

@Controller
public class ShowController {

    @Autowired
    private OrgRepo orgRepo;

    @GetMapping("/show")
    public String show(@RequestParam(name = "id", required=false) Integer id, Model model) {
        model.addAttribute("show", orgRepo.findById(id).get());
        return "show";
    }
}