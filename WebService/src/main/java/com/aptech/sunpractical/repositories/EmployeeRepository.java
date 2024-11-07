package com.aptech.sunpractical.repositories;

import com.aptech.sunpractical.entities.Employee;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EmployeeRepository extends CrudRepository<Employee, Integer> {
    List<Employee> findUsersByName(String name);
}
