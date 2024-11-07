package com.aptech.sunpractical.service;

import com.aptech.sunpractical.entities.Employee;
import com.aptech.sunpractical.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeRepository repo;

    public List<Employee> getAll() {
        return (List<Employee>) repo.findAll();
    }

    public void save(Employee employee) {
        repo.save(employee);
    }

    public Employee getEmployeeById(Integer id) throws EmployeeNotFoundException {
        Optional<Employee> employee = repo.findById(id);
        if (employee.isPresent()) {
            return employee.get();
        }
        throw new EmployeeNotFoundException("Not found product by id: " + id);
    }

    public List<Employee> findEmployeeByName(String name) {
        return (List<Employee>) repo.findUsersByName(name);
    }

    public void delete(Integer id) {
        try {
            repo.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
