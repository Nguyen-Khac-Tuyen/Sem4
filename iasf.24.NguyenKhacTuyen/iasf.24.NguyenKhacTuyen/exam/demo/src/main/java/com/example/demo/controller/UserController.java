package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private IUserService iUserService;

    @GetMapping("/getListUser")
    public String listAction(Model model)
    {
        // Khai báo biến tạm chứa danh sách
        // bản ghi đọc ra từ Repository
        List<User> listUser = iUserService.getListUser();

        model.addAttribute("listUsers", listUser);

        return "list"; // kết xuất giao diện list.html
    }

    @GetMapping("/addUser")
    public String listAction(Model model)
    {
        // Khai báo biến tạm chứa danh sách
        // bản ghi đọc ra từ Repository
        List<User> listUser = iUserService.getListUser();

        model.addAttribute("listUsers", listUser);

        return "list"; // kết xuất giao diện list.html
    }


}
