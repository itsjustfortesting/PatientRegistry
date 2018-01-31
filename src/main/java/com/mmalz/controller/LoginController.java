package com.mmalz.controller;

import com.mmalz.model.Users;
import com.mmalz.service.UsersService;
import org.hibernate.HibernateException;
import org.hibernate.exception.ConstraintViolationException;
import org.hibernate.exception.GenericJDBCException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    private UsersService usersService;

    @RequestMapping("/")
    public String showIndex() {
        return "index";
    }

    @GetMapping("/access-denied")
    public String showAccessDenied() {
        return "login/access-denied";
    }

    @RequestMapping("/newuserform")
    public String showNewUserForm(Model model) {
        model.addAttribute("users", new Users());
        return "login/newuserform";
    }

    @PostMapping("/adduser")
    public String addNewUser(@Valid @ModelAttribute("users") Users user, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            return "login/newuserform";
        } else {
            try {
                usersService.addUser(user);
            } catch (ConstraintViolationException e) {
                e.printStackTrace();
                user.setPassword(null);
                model.addAttribute("formerror", "duplicate");
                return "login/newuserform";
            } catch (HibernateException e) {
                e.printStackTrace();
                user.setPassword(null);
                model.addAttribute("formerror", "other");
                return "login/newuserform";
            }
            redirectAttributes.addFlashAttribute("result", "ok");
            return "redirect:/";
        }
    }
}
