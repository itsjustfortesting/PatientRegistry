package com.mmalz.controller;

import com.mmalz.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/main")
public class MainController {

    @Autowired
    private UsersService usersService;

    @RequestMapping("/")
    public String showMainPage() {
        return "main/main-page";
    }

    @RequestMapping("/user-settings")
    public String showUserSettings() {
        return "user-settings";
    }
}
