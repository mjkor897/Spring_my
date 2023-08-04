package com.example.spring_my.member.web;

import com.example.spring_my.dept.service.DeptDto;
import com.example.spring_my.dept.service.DeptService;
import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.member.service.MemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private DeptService deptService;


    // 로그인 버튼 눌렀을때
    @PostMapping(value = "/login.do")
    @ResponseBody // 별도의 뷰 없이 화면에 리턴값이 표출 가능하게
    public String selectLogin(/*@PathVariable("cmpnyAddrDomain") String cmpnyAddrDomain, */@RequestBody MemberDto entity, HttpServletRequest request, HttpSession session, ModelMap model) throws Exception {

        if (session.getAttribute("memberLogin") != null) {
            // 기존에 memberLogin이란 세션 값이 존재한다면 기존값을 제거해 준다.
            session.removeAttribute("memberLogin");
        }

        // 로그인이 성공하면 MemberDto 객체를 반환한다.
        MemberDto dto = memberService.selectLogin(entity);
        //model.addAttribute("MemberDto", dto);

        System.out.println("도메인: " + entity.getCmpnyAddrDomain());
        System.out.println("아이디" + entity.getMbrId());

        // 로그인 성공
        if (dto != null) {
            // 세션에 memberLogin 이름으로 MemberDto 객체를 저장해 놓는다. (key, value)
            session.setAttribute("memberLogin", dto);
            // 로그인 성공시 이동
            //returnURL = "redirect:/home"; // 나중에 mjcompany 붙이기
            //response.getWriter().print(true);
            return "true"; // @ResponseBody 때문에 문자열로 반환됨..
        } else {
            //response.getWriter().print(false);
            return "false";
        }
    }

    // 직원 로그인폼으로 이동할때
    @GetMapping(value = "/login.do")
    public String selectLogin(/*@PathVariable("cmpnyAddrDomain") String cmpnyAddrDomain, */ MemberDto entity, ModelMap model) throws Exception {

        //if(cmpnyAddrDomain == null)
        //cmpnyAddrDomain = "/login"; // cmpnyAddrDomain에 null 들어오면 로그인페이지로 이동(미완성)
        System.out.println("(entity)cmpnyAddrDomain : " + entity.getCmpnyAddrDomain());
        //System.out.println("cmpnyAddrDomain : " + cmpnyAddrDomain);

        //int idx = cmpnyAddrDomain.indexOf(".");
        //String domainJsp = cmpnyAddrDomain.substring(0, idx); // .의 앞부분 추출
        //String sub = cmpnyAddrDomain.substring(idx+1); // .의 뒷부분 추출
        model.addAttribute("MemberDto", entity);

        return "/login/memberLogin"; // jsp 경로
    }

    @RequestMapping("/home.do")
    public String home(MemberDto entity, ModelMap model) throws Exception {
        model.addAttribute("MemberDto", entity);
        return "home";
    }

    // 인사정보 이동
    // Service A와 Service B는 실행 중에 오류가 나도 서로에게 영향을 주지 않으므로,
    // 한 Controller에서 여러 Service를 호출하는 것은 딱히 문제가 되지 않는다.
    @RequestMapping("/member.do")
    public String member(MemberDto entity, ModelMap model) throws Exception {

        DeptDto dto = new DeptDto();
        List<?> selectDept = deptService.selectDeptList(dto);
        model.addAttribute("selectDept", selectDept);

        return "member/member";
    }

    @RequestMapping("/member/ajaxMbrInfo.do")
    @ResponseBody
    public List<?> mbrInfo(@RequestBody MemberDto entity, ModelMap model) throws Exception {
        MemberDto dto = new MemberDto();
        dto.setDeptNm(entity.getDeptNm());
        dto.setHighDeptNm(entity.getHighDeptNm());
        // @RequestBody 붙여야 josn타입의 데이터로 entity가 받아서 param을 받아올 수 있음. 나중에 더 자세히 알아보기
        System.out.println("deptNm : " + entity.getDeptNm());
        System.out.println("highDeptNm : " + entity.getHighDeptNm());
        List<?> selectMbrInfo = memberService.selectMbrInfo(dto);
        model.addAttribute("selectMbrInfo", selectMbrInfo);
        return selectMbrInfo;
    }

    @RequestMapping("/member/ajaxSrchMbrInfo.do")
    @ResponseBody
    public List<?> srchMbrInfo(@RequestBody MemberDto entity, ModelMap model) throws Exception {
        MemberDto dto = new MemberDto();
        dto.setMbrNm(entity.getMbrNm());
        System.out.println("mbrNm : " + entity.getMbrNm());
        List<?> srchSelectMbrInfo = memberService.srchSelectMbrInfo(dto);
        model.addAttribute("srchSelectMbrInfo", srchSelectMbrInfo);
        return srchSelectMbrInfo;
    }

    //로그아웃
    @RequestMapping(value="/logout.do")
    public String logout(HttpSession session) {
        session.removeAttribute("memberLogin");
        //session.invalidate(); // 모든 세션 삭제
        return "redirect:/mjcompany.co.kr/login.do";
    }

}
