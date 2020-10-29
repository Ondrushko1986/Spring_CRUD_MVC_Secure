package test.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import test.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import test.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String addUser(@ModelAttribute("user") User user) {
        userService.addFromRegistration(user);
        return "redirect:/";
    }

    @GetMapping(value = "/login")
    public String login() {
        return "login";
    }

    @GetMapping(value = "/user")
    public String user(Model model) {
        User loggedInUser = (User) SecurityContextHolder.getContext()
                .getAuthentication().getPrincipal();
        model.addAttribute("loggedInUser", loggedInUser);
        return "user";
    }

    @GetMapping(value = "/")
    public String getHomePage() {
        return "index";
    }

}


