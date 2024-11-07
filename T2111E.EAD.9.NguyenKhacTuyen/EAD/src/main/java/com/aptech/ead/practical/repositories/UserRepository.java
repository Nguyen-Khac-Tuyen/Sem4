package com.aptech.ead.practical.repositories;

import com.aptech.ead.practical.entities.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
    List<User> findAllByNameContaining(String name);
}
