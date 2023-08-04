package com.example.spring_my;


import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.swing.filechooser.FileSystemView;

@Controller
public class HomeController {

    @RequestMapping("/admin.do")
    public String admin(HttpServletRequest request) {
        // prefix: /WEB-INF/views
        // suffix: .jsp
        // 풀경로: /WEB-INF/views/home.jsp
        System.out.println("성공! ");
        String root_path = request.getSession().getServletContext().getRealPath("/");
        String rootPath = FileSystemView.getFileSystemView().getHomeDirectory().toString();
        String tets = FileSystemView.getFileSystemView().toString();
        System.out.println(root_path);
        System.out.println(rootPath);
        System.out.println(tets);

        return "admin";
    }


}