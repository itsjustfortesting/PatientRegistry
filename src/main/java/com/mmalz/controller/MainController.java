package com.mmalz.controller;

import com.mmalz.model.Users;
import com.mmalz.service.UsersService;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class MainController {

    @Autowired
    private UsersService usersService;

    @RequestMapping("/")
    public String showHome() {
        return "home";
    }

    @RequestMapping("/newuserform")
    public String showNewUserForm(Model model) {
        model.addAttribute("users", new Users());
        return "newuserform";
    }

    @PostMapping("/adduser")
    public String addNewUser(@Valid @ModelAttribute("users") Users user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "newuserform";
        } else { //TODO Make custom validator
            try {
                usersService.addUser(user);
            } catch (HibernateException e) {
                e.printStackTrace();
                user.setPassword(null);
                model.addAttribute("formerror", "Blah");
                return "newuserform";
            }
            return "redirect:login";
        }
    }
}
