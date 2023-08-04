package com.example.spring_my.mail.web;

import com.example.spring_my.dept.service.DeptService;
import com.example.spring_my.mail.service.MailDto;
import com.example.spring_my.mail.service.MailService;
import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class MailController {

    @Autowired
    private MailService mailService;

    @Autowired
    private MemberService memberService;

    @GetMapping("/mail.do")
    public String mailGet(MailDto entity, ModelMap model) throws Exception {
        return "mail/mail";
    }

    @PostMapping("/mail.do")
    @ResponseBody
    public void mailPost(MailDto entity, ModelMap model) throws Exception {
        mailService.sendMail(entity);
    }

    @RequestMapping("/mail/mailSuccess.do")
    public String mailSuccess() {
        return "mail/mailSuccess";
    }

    @RequestMapping("/mail/addrBook.do")
    public String addrBook(MemberDto entity, ModelMap model) throws Exception {
        List<?> list = memberService.selectAddrBook(entity);
        model.addAttribute("list", list);
        return "mail/addrBook";
    }

}
