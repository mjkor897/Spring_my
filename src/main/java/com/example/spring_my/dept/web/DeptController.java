package com.example.spring_my.dept.web;

import com.example.spring_my.dept.service.DeptDto;
import com.example.spring_my.dept.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class DeptController {

    @Autowired
    private DeptService deptService;

    /*@RequestMapping("/ajaxDept.do")
    public ModelAndView ajaxDept(DeptDto entity, ModelMap model) throws Exception {

        model.addAttribute("DeptDto", deptService.selectDept(entity));

        return new ModelAndView("jsonView", model);

    }*/




}
