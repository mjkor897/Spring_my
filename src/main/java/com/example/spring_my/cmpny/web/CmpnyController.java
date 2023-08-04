package com.example.spring_my.cmpny.web;

import com.example.spring_my.cmpny.service.CmpnyDto;
import com.example.spring_my.cmpny.service.CmpnyService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
public class CmpnyController {

    @Autowired
    private CmpnyService cmpnyService;

    @PostMapping("/sign")
    public String insertCmpny(CmpnyDto entity, HttpServletRequest request) {
        // 유효성 검사 넣을지 생각
        try {
            cmpnyService.insertCmpny(entity, request);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("(entity)CmpnyNo : " + entity.getCmpnyNo()); //들어옴
        System.out.println("(request)CmpnyNo : " + request.getParameter("CmpnyNo")); //안들어옴

        return "redirect:/login"; // mapping 경로
    }

    // insertCmpny method 방식이 다르기 때문에 주소를 중복해서 사용가능(get과 post)
    // 회원가입 폼으로 이동할때에는 GET메서드를 타고 회원가입 버튼을 눌렀을때 POST메서드를 타게끔 작성

    // 회원가입 하는 페이지
    @GetMapping("/sign.do")
    public String insertCmpny(CmpnyDto entity, HttpServletRequest request, ModelMap model) {

        model.addAttribute("CmpnyDto", entity);
        model.addAttribute("CmpnyDto", request);

       return "login/cmpnySign"; // jsp 경로
    }

    // 기업 로그인
    @PostMapping("/login.do")
    @ResponseBody // 별도의 뷰 없이 화면에 리턴값이 표출 가능하게
    public String selectLogin(CmpnyDto entity, HttpServletRequest request, HttpSession session, ModelMap model) throws Exception {

        //CmpnyDto dto = new CmpnyDto();
        String returnURL = "";
        if (session.getAttribute("login") != null) {
            // 기존에 login이란 세션 값이 존재한다면 기존값을 제거해 준다.
            session.removeAttribute("login");
        }

        // 로그인이 성공하면 CmpnyDto 객체를 반환한다.
        CmpnyDto dto = cmpnyService.selectLogin(entity); // CmpnyDto dto 이렇게 선언해서 해줘야 dto에 null이 안들어감. 왜인진 모르겠음..
        model.addAttribute("CmpnyDto", dto);
        // entity에 ,mjcompany 이렇게 콤마랑 찍혀서 나옴
        // dto는 쿼리에 'mjcompany' 박은거로 나옴
        System.out.println("도메인: " + entity.getCmpnyAddrDomain()); //나옴
        //System.out.println("비번: " + dto.getCmpnyAdminPw()); // 오류남. 찍으면 안될듯... 아디/비번 틀려서 오류나는듯

        // 로그인 성공
        if (dto != null) {
            // 세션에 login인이란 이름으로 CmpnyDto 객체를 저장해 놓는다. (key, value)
            session.setAttribute("login", dto);
            // 로그인 성공시 이동
            //returnURL = "redirect:/home"; // 나중에 mjcompany 붙이기
            //response.getWriter().print(true);
            return "redirect:/home"; // 이거 안타고 login.jsp 에 있는 ajax 탐. 이유는 @ResponseBody 때문
        } else {
            // 로그인에 실패한 경우 이동 (앞에 실패했다고 창 띄워주고)
            //response.getWriter().print(false);
            return "false";
        }
    }

    @GetMapping("/login.do")
    public String selectLogin(CmpnyDto entity, HttpServletRequest request, ModelMap model) {

        model.addAttribute("CmpnyDto", entity);
        model.addAttribute("CmpnyDto", request);

        return "login/cmpnyLogin";
    }

    //로그아웃
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/sign";
    }


}
