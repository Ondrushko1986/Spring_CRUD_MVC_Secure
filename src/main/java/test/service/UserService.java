package test.service;

import test.model.User;

import java.util.List;


public interface UserService {

    List<User> allUsers();

    void add(User user, String role);

    void delete(User user);

    void edit(User user, String role);

    User getById(int id);

   void addFromRegistration(User user);




}