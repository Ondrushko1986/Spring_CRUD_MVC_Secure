package test.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import test.model.Role;
import test.model.User;


public interface RoleDAO {
    Role getRoleById(Long id);
}
