package com.aptech.sunpractical.api;

import com.aptech.sunpractical.entities.Employee;
import com.aptech.sunpractical.service.EmployeeService;
import com.aptech.sunpractical.service.EmployeeNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/employee")
public class EmployeeApi {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping(value = "/list", produces = "application/json")
    public List<Employee> getEmployees() {
        return employeeService.getAll();
    }

    @PostMapping("/create")
    public String createEmployee(@RequestBody Employee employee) {
        employeeService.save(employee);
        return "success";
    }

    @PutMapping("/{id}/edit")
    public String editEmployee(@RequestBody Employee user, @PathVariable("id") Integer id)
            throws EmployeeNotFoundException {
        employeeService.getEmployeeById(id);
        employeeService.save(user);
        return "success";
    }

    @DeleteMapping("/{id}/delete")
    public String deleteEmployee(@PathVariable("id") Integer id) throws EmployeeNotFoundException {
        employeeService.getEmployeeById(id);
        employeeService.delete(id);
        return "Delete successful";
    }
}
