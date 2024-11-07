package com.aptech.ead.practical.controllers;

import com.aptech.ead.practical.entities.User;
import com.aptech.ead.practical.service.UserNotFoundException;
import com.aptech.ead.practical.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService service;

    @GetMapping("/list")
    public String list(Model model){
        List<User> users = service.getAll();
        model.addAttribute("users", users);
        return "user/list";
    }

    @GetMapping("/create")
    public String create(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "user/create";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute(name = "user") User user, RedirectAttributes ra){
        service.save(user);
        ra.addFlashAttribute("success", "Save user successfully.!");
        return "redirect:list";
    }

    @GetMapping("edit")
    public String edit(@RequestParam("id") Integer id, Model model, RedirectAttributes ra) throws UserNotFoundException {
        User user = service.getUserById(id);
        ra.addFlashAttribute("success", "Edit user successfully.!");
        model.addAttribute("user", user);
        return "user/edit";
    }

    @GetMapping("/remove")
    public String delete(@RequestParam("id") Integer id, RedirectAttributes ra){
        service.delete(id);
        ra.addFlashAttribute("success", "Delete user successfully.!");
        return "redirect:list";
    }

    @GetMapping("/search")
    public String search(@RequestParam("name") String name, Model model) {
        List<User> users = service.findUserByName(name);
        model.addAttribute("users", users);
        return "user/list";
    }
}
