package com.aptech.ead.practical.service;

import com.aptech.ead.practical.entities.User;
import com.aptech.ead.practical.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepository repo;

    public List<User> getAll(){
        return (List<User>) repo.findAll();
    }

    public void save(User user){
        repo.save(user);
    }

    public User getUserById(Integer id) throws UserNotFoundException {
        Optional<User> user = repo.findById(id);
        if(user.isPresent()){
            return user.get();
        }
        throw new UserNotFoundException("Not found product by id: " + id);
    }

    public List<User> findUserByName(String name) {
        return (List<User>) repo.findAllByNameContaining(name);
    }

    public void delete(Integer id){
        try {
            repo.deleteById(id);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
