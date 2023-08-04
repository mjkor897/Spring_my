package com.example.spring_my.board.web;

import com.example.spring_my.board.service.BoardDto;
import com.example.spring_my.board.service.BoardService;
import com.example.spring_my.cmpny.service.CmpnyDto;
import com.example.spring_my.file.service.FileDto;
import com.example.spring_my.file.service.FileService;
import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.util.FileUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.UnsupportedEncodingException;
import java.util.*;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class BoardController {

    // @Resource랑 차이
    @Autowired
    private BoardService boardService;

    @Autowired
    private FileService fileService;

    // 마이바티스 테스트
    @RequestMapping("/view")
    public String viewTest(BoardDto entity, ModelMap model) throws Exception {
        BoardDto dto = new BoardDto();
        System.out.println("1111");

        try {
            System.out.println("2222");
            dto = boardService.view(dto); //dto에 mapper-view를 돌려 나온 값을 dto에 그대로 담는다.
            model.addAttribute("view", dto);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("boardId : " + dto.getBoardId()); // 가져와짐<
        System.out.println("boardId : " + entity.getBoardId()); // 안가져와짐
        return "board/boardView"; // jsp 파일 호출 (실제 찾는 경로는 localhost:8080/board/view)
    }

    // list 테스트
    @RequestMapping(value = "/list.do")
    public String listTest(BoardDto entity, ModelMap model) throws Exception {
        BoardDto dto = new BoardDto();

        try {
            //List<Map<String, Object>> list1 = boardService.selectList(model);
            //model.addAttribute("list1", list1);
            List<?> list = boardService.list(dto);
            model.addAttribute("list", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //System.out.println("boardId : " + ArrayList(dto.getBoardId());
        return "board/boardList";
    }

    @RequestMapping(value = "board.do")
    public String list(BoardDto entity, ModelMap model, HttpSession session) throws Exception{

        try {
            MemberDto memberLogin = (MemberDto) session.getAttribute("memberLogin");
            CmpnyDto login = (CmpnyDto) session.getAttribute("login");
            System.out.println("세션값 확인 : "+ memberLogin.getMbrNm());
            System.out.println("세션값 확인 : "+ login.getCmpnyAddrDomain());

            List<?> list = boardService.list(entity);
            model.addAttribute("list", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "thymeleaf/board/boardList";
    }

    @RequestMapping(value = "board/view.do")
    public String view(BoardDto entity, ModelMap model) throws Exception {

        try {
            entity = boardService.view(entity);

            BoardDto dto = new BoardDto();
            int viewCnt = boardService.cntPlus(entity);
            System.out.println("viewCnt1:" + entity.getViewCnt());
            System.out.println("viewCnt2:" + viewCnt);

            model.addAttribute("fileList", boardService.getBoardFileList(entity.getUnityId()));
            model.addAttribute("BoardDto", entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "thymeleaf/board/boardView";
    }

    @RequestMapping(value = "board/regist.do")
    public String regist(BoardDto entity, ModelMap model) throws Exception {

        String boardId = entity.getBoardId();
        boolean boardIdEmptyAt = boardId.trim().isEmpty();
        System.out.println("boardId : @" + boardId + "@" + boardIdEmptyAt);

        if (boardIdEmptyAt) { // 신규면
            model.addAttribute("BoardDto", new BoardDto());
            System.out.println("신규@@");
            System.out.println("신규이면" + entity.getBoardId());
        } else {
            entity = boardService.view(entity);
            model.addAttribute("BoardDto", entity);
            System.out.println("수정@@:" + entity);
            System.out.println("수정이면:" + entity.getBoardId());
        }

        model.addAttribute("BoardDto", entity);
        return "thymeleaf/board/boardRegist";
    }

    @RequestMapping(value = "board/insert.do")
    public String insert(BoardDto entity, ModelMap model, HttpServletRequest request, HttpSession session, MultipartHttpServletRequest mhsr) throws Exception{

        try {
            FileUtils fileUtils = new FileUtils();
            List<FileDto> fileList = fileUtils.parseFileInfo(request, mhsr);

            if(CollectionUtils.isEmpty(fileList) == false) { // 파일업로드
                fileService.insertMariaFile(fileList);
                String unityId = fileList.get(0).getUnityId();
                entity.setUnityId(unityId);
            }
            boardService.save(entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/mjcompany.co.kr/board.do";
    }

    @RequestMapping(value = "board/update.do")
    public String update(BoardDto entity, ModelMap model, HttpServletRequest request, MultipartHttpServletRequest mhsr) throws Exception{

        try {
            FileUtils fileUtils = new FileUtils();
            List<FileDto> fileList = fileUtils.parseFileInfo(request, mhsr);

            if(CollectionUtils.isEmpty(fileList) == false) { // 파일업로드
                fileService.insertMariaFile(fileList);
                String unityId = fileList.get(0).getUnityId();
                entity.setUnityId(unityId);
            }
            boardService.update(entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/mjcompany.co.kr/board.do";
    }

    @RequestMapping(value = "board/delete.do")
    public String delete(BoardDto entity, ModelMap model) throws Exception{

        try {
            boardService.delete(entity);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/mjcompany.co.kr/board.do";
    }

    @RequestMapping(value="/board/fileDown.do")
    @ResponseBody
    public ResponseEntity<Resource> fileDown(@RequestParam("fileName") String fileName, HttpServletRequest request) throws Exception {

        System.out.println("board/fileDown.do 실행");
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
