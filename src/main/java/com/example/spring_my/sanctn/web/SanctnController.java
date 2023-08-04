package com.example.spring_my.sanctn.web;

import com.example.spring_my.dept.service.DeptDto;
import com.example.spring_my.dept.service.DeptService;
import com.example.spring_my.file.service.FileDto;
import com.example.spring_my.file.service.FileService;
import com.example.spring_my.file.serviceImpl.FileMapper;
import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.sanctn.service.SanctnDto;
import com.example.spring_my.sanctn.service.SanctnService;
import com.example.spring_my.util.FileUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class SanctnController {

    @Autowired
    private SanctnService sanctnService;
    @Autowired
    private DeptService deptService;

    @Autowired
    private FileService fileService;

    @RequestMapping("/sanctn.do")
    public String sanctn(SanctnDto entity, ModelMap model, HttpSession session) throws Exception {

        MemberDto memberLogin = (MemberDto) session.getAttribute("memberLogin");
        entity.setSuserId(memberLogin.getMbrId());
        entity.setRgsUserId(memberLogin.getMbrId());
        List<?> list = sanctnService.list(entity);
        model.addAttribute("list", list);
        List<?> selectSanctnList = sanctnService.selectSanctnList(entity);
        List<?> selectSanctnCcList = sanctnService.selectSanctnCcList(entity);
        model.addAttribute("selectSanctnList", selectSanctnList);
        model.addAttribute("selectSanctnCcList", selectSanctnCcList);

        model.addAttribute("SanctnDto", entity);

        return "sanctn/sanctn";
    }

    @RequestMapping("/sanctnRegist.do")
    public String sanctnRegist(SanctnDto entity, ModelMap model) throws Exception {
        model.addAttribute("SanctnDto", entity);
        return "sanctn/sanctnRegist";
    }

    @RequestMapping("/sanctnView.do")
    public String sanctnView(SanctnDto entity, ModelMap model, HttpSession session) throws Exception {
        try {
            MemberDto memberLogin = (MemberDto) session.getAttribute("memberLogin");

            entity.setSanctnId(entity.getPsanctnId());
            entity = sanctnService.view(entity);
            System.out.println("view.do : " + entity.getSanctnId());
            List<?> selectSanctnUser = sanctnService.selectSanctnUser(entity);
            List<?> selectSanctnCcUser = sanctnService.selectSanctnCcUser(entity);

            model.addAttribute("fileList", sanctnService.getSanctnFileList(entity.getUnityId()));
            System.out.println("unity_id :" + entity.getUnityId());
            model.addAttribute("SanctnDto", entity);
            model.addAttribute("selectSanctnUser", selectSanctnUser);
            model.addAttribute("selectSanctnCcUser", selectSanctnCcUser);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "sanctn/sanctnView";
    }

    @RequestMapping("/sanctnInsert.do")
    public String sanctnInsert(SanctnDto entity, ModelMap model, HttpServletRequest request, HttpSession session, MultipartHttpServletRequest mhsr) throws Exception {
        try {

            FileUtils fileUtils = new FileUtils();
            List<FileDto> fileList = fileUtils.parseFileInfo(request, mhsr);

            if(CollectionUtils.isEmpty(fileList) == false) { // 파일업로드
               fileService.insertFile(fileList);
               String unityId = fileList.get(0).getUnityId();
               entity.setUnityId(unityId);
            }

            MemberDto memberLogin = (MemberDto) session.getAttribute("memberLogin");
            entity.setRgsUserId(memberLogin.getMbrId());
            sanctnService.insert(entity);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/mjcompany.co.kr/sanctn.do";
    }

    @RequestMapping("/sanctnLine.do")
    public String sanctnLine(SanctnDto entity, ModelMap model) throws Exception {

        DeptDto dto = new DeptDto();
        List<?> sanctnList = deptService.sanctnList(dto);
        List<?> singleSanctnList = deptService.singleSanctnList(dto);
        model.addAttribute("sanctnList", sanctnList);
        model.addAttribute("singleSanctnList", singleSanctnList);

        return "sanctn/sanctnLine";
    }

    // 결재하기
    @RequestMapping("/sanctnIng.do")
    public String sanctnIng(SanctnDto entity, ModelMap model, HttpSession session) throws Exception {
        try {
            MemberDto memberLogin = (MemberDto) session.getAttribute("memberLogin");

            SanctnDto dto = new SanctnDto();
            dto = sanctnService.view(entity); // entity:대기 , dto:x

            List<?> selectSanctnUser = sanctnService.selectSanctnUser(entity);
            List<?> selectSanctnCcUser = sanctnService.selectSanctnCcUser(entity);

            //entity.setSanctnId(entity.getSanctnId());
            dto.setSanctnUserSttusCdId(entity.getSanctnUserSttusCdId()); // entity:대기 , dto:x

            model.addAttribute("fileList", sanctnService.getSanctnFileList(dto.getUnityId()));
            System.out.println("(sanctnIng)unity_id :" + dto.getUnityId());
            model.addAttribute("SanctnDto", dto);
            model.addAttribute("selectSanctnUser", selectSanctnUser);
            model.addAttribute("selectSanctnCcUser", selectSanctnCcUser);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "sanctn/sanctnIng";
    }

    // 결재유저상태(+문서상태) 업데이트
    @RequestMapping("/sttusUpdate.do")
    public String sttusUpdate(SanctnDto entity, ModelMap model) throws Exception {

        entity.setSanctnId(entity.getSanctnId()); // entity:승인
        entity.setSanctnUserSttusCdId(entity.getSanctnUserSttusCdId()); // entity:승인

        sanctnService.sttusUpdate(entity);
        sanctnService.sttusDocUpdate(entity);
        System.out.println("sanctnUserSttusCdId:" + entity.getSanctnUserSttusCdId()); // entity:승인
        System.out.println("sanctnSttusCdId:" + entity.getSanctnSttusCdId());

        return "redirect:/mjcompany.co.kr/sanctn.do";
    }

    @RequestMapping("/ajaxMbrCd.do")
    @ResponseBody
    public List<?> ajaxMbrCd(@RequestBody DeptDto entity, ModelMap model) throws Exception {

        List<?> selectMbrCd = deptService.selectMbrCd(entity);
        System.out.println("(entity)mbrCdArr: " + entity.getMbrCdArr());

        return selectMbrCd;
    }

    @RequestMapping(value="fileDown.do")
    @ResponseBody
    public ResponseEntity<Resource> fileDown(@RequestParam("fileName") String fileName, HttpServletRequest request) throws Exception {

        System.out.println("sanctn/fileDown.do 실행");
        //업로드 파일 경로
        String path = "C:\\project_my\\fileUpload\\";

        //파일경로, 파일명으로 리소스 객체 생성
        Resource resource = new FileSystemResource(path + fileName);

        //파일 명
        String resourceName = resource.getFilename();

        //Http헤더에 옵션을 추가하기 위해서 헤더 변수 선언
        HttpHeaders headers = new HttpHeaders();

        try {
            //헤더에 파일명으로 첨부파일 추가
            headers.add("Content-Disposition", "attachment; filename=" + new String(resourceName.getBytes("UTF-8"),
                    "ISO-8859-1"));
        } catch(UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
    }

}
