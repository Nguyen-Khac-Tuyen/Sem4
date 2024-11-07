package com.example.demo.service.impl;

import com.example.demo.UserDTO;
import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User addUser(User user) {
        User userNew = new User();
        if(user.getAge()!=null){
            userNew.setAge(user.getAge());
        }
        if(user.getId()!=null){
            userNew.setId(user.getId());
        }
        if(user.getName()!=null){
            userNew.setName(user.getName());
        }
        if(user.getSalary()!=null){
            userNew.setSalary(user.getSalary());
        }
        userRepository.save(userNew);
        return userNew;
    }

    @Override
    public User getUserByName(String name) {
        User user= new User();
        if(name != null && userRepository.findUserByName(name) != null){
             return userRepository.findUserByName(name);
        }
        return user;
    }

    @Override
    public List<User> getListUser() {
        List<User> users = userRepository.findAll();
        if(users != null && users.size() > 0){
            return users;
        }
        return new ArrayList<>();
    }

    @Override
    public UserDTO updateUser(User user) {
        User userUpdate = userRepository.findById(user.getId()).get();
        if(user != null){
            if(user.getAge() != null){
                userUpdate.setAge(user.getAge());
            }
            if(user.getName() != null){
                userUpdate.setName(user.getName());
            }
            if(user.getAge() != null){
                userUpdate.setAge(user.getAge());
            }
            return new UserDTO("Success", userUpdate);
        } else {
            return new UserDTO("User not found", null);
        }

    }

    @Override
    public UserDTO deleteUser(Long id) {
        User user = new User();
        if(id != null && userRepository.findById(id).get() != null){
            userRepository.deleteById(id);
            return new UserDTO("Delete user success", null);
        }else {
            return new UserDTO("Not found user", null);
        }
    }
}
