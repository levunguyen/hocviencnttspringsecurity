package com.github.hvcntt.security;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by huynhduychuong on 8/9/2016.
 */
public class LoginFailureHandler extends SimpleUrlAuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
       String username = request.getParameter("username");
        // if username not empty then query User object by username
        // if user!= null then increase login fail counter.
        // Ex: user.setLoginFailCount(user.getLoginFailCount()++);
        // if user.getLoginFailCount >= 4 then user.setAccountNoneLock(false);
        // update database

        super.onAuthenticationFailure(request, response, exception);
    }
}
