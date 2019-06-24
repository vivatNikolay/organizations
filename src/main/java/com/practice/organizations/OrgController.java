package com.practice.organizations;

import com.practice.organizations.OrgRepo;
import com.practice.organizations.entities.Organization;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/org")
public class OrgController {

    @Autowired
    private OrgRepo orgRepo;

    @GetMapping("/")
    public String getAll(Model model) {
        model.addAttribute("showAllOrg", orgRepo.findAll());
        return "index";
    }


    @GetMapping("/create")
    public String create(Model model/*, String type, String fullName, String shortName, String region*/) {
    /*    model.addAttribute("type", type);
        model.addAttribute("fullName", fullName);
        model.addAttribute("shortName", shortName);
        model.addAttribute("region", region);
*/
        Organization org = new Organization();
        System.out.println("1 " + org);
        model.addAttribute("org", org);
        model.addAttribute("organization", org);

        return "create";
    }

    @PostMapping("/save")
    public ModelAndView save(Model model, @ModelAttribute("org") Organization org) {
        System.out.println(org);
        orgRepo.save(org);
        /*if(orgRepo.existsById(id)){
            orgRepo.save(newOrg);
        } else {
            orgRepo.update(newOrg);
        }*/
        return new ModelAndView("redirect:/org/");
    }

    @GetMapping("/view")
    public String show(@RequestParam(name = "id", required=false) Integer id, Model model) {
        model.addAttribute("show", orgRepo.findById(id).get());
        return "view";
    }

    @GetMapping("/delete")
    public ModelAndView delete(@RequestParam(name = "id", required=false) Integer id, Model model) {
        orgRepo.deleteById(id);
        return new ModelAndView("redirect:/org/");
    }
}