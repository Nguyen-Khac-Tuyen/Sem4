package com.example.demo.service;

import com.example.demo.UserDTO;
import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface IUserService {

    User addUser(User user);

    User getUserByName(String name);

    List<User> getListUser();

    UserDTO updateUser(User user);

    UserDTO deleteUser(Long id);


}
