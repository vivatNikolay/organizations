package com.practice.organizations;

import com.practice.organizations.OrgRepo;
import com.practice.organizations.entities.Organization;
import com.practice.organizations.entities.OrganizationValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.ws.Binding;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/org")
public class OrgController {

    @Autowired
    private OrganizationValidator organizationValidator;
    @Autowired
    private OrgRepo orgRepo;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(new OrganizationValidator());
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, "dateOfRegistration", new CustomDateEditor(dateFormat, true));
        binder.registerCustomEditor(Date.class, "liquidationDate", new CustomDateEditor(dateFormat, true));
    }

    @GetMapping("/")
    public String getAll(Model model) {
        model.addAttribute("showAllOrg", orgRepo.findAll());
        return "index";
    }


    @GetMapping("/create")
    public String create(Model model) {

        Organization org = new Organization();
        model.addAttribute("org", org);

        return "save";
    }

    @GetMapping("/update")
    public String upadate(@RequestParam(name = "id", required=false) Integer id, Model model) {
        Organization org = orgRepo.findById(id).get();
        model.addAttribute("org", org);
        System.out.println(org.getId() + " - 1");
        return "save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("org")@Validated Organization org, BindingResult result, Model model) {
        System.out.println(org.getId() + " - 2");
        if(result.hasErrors()) {
            return "save";
        }
        orgRepo.save(org);
        System.out.println(org.getId() + " - 3");
        model.addAttribute("showAllOrg", orgRepo.findAll());
        return "index";
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