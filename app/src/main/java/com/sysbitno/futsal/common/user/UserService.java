package com.sysbitno.futsal.common.user;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserRepository userRepository;

    public void addAccessLevel(String email, AccessLevel accessLevel) {
        User user = userRepository.findByEmail(email);

        user.getAccessLevels().add(accessLevel);
    }

    public void removeAccessLevel(String email, AccessLevel accessLevel) {
        User user = userRepository.findByEmail(email);
        user.getAccessLevels().remove(accessLevel);
    }

    public boolean hasAccess(String email, AccessLevel accessLevel) {
        User user = userRepository.findByEmail(email);
        return user.getAccessLevels().contains(accessLevel);
    }
}
