package com.mmalz.model;

import javax.persistence.*;

@Entity
@Table(name = "user_roles")
public class UserRoles {

    @Id
    @Column(name = "role_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int role_id;

    @Column(name = "role_name")
    @Enumerated(EnumType.STRING)
    private Role roleName;

    public UserRoles() {
    }

    public UserRoles(Role role) {
        this.roleName = role;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public Role getRoleName() {
        return roleName;
    }

    public void setRoleName(Role roleName) {
        this.roleName = roleName;
    }

}
