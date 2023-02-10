package ru.javawebinar.topjava.util;

import ru.javawebinar.topjava.model.Role;
import ru.javawebinar.topjava.model.User;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class UserUtil {

    public static final List<User> users = Arrays.asList(
            new User(1, "User", "user@mail.ru", "User", Role.USER),
            new User(2, "Admin", "admin@mail.ru", "Admin", Role.USER),
            new User(3, "UserAdmin", "UserAdmin@mail.ru", "UserAdmin", Role.USER, Role.ADMIN)
    );

    public static List<User> getUsers() {
        Collections.sort(users, new Comparator<User>() {
            @Override
            public int compare(User o1, User o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });
        return users;
    }

}
