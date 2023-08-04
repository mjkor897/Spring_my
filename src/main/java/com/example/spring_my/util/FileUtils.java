package com.example.spring_my.util;

import com.example.spring_my.file.service.FileDto;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import java.util.UUID;

//cc:https://moonhy7.tistory.com/entry/Spring-9%EC%9E%A5-%ED%8C%8C%EC%9D%BC-%EC%97%85%EB%A1%9C%EB%93%9C-%EC%88%98%EC%A0%95-%EB%B0%8F-%EC%82%AD%EC%A0%9C-%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C
public class FileUtils {
    public List<FileDto> parseFileInfo(HttpServletRequest request, MultipartHttpServletRequest mhsr) throws IOException {
        
        if(ObjectUtils.isEmpty(mhsr)) { // null처리 = 멀티파일이 아닐때?
            return null;
        }

        List<FileDto> fileList = new ArrayList<FileDto>(); // List<FileDto>타입의 fileList 라는 배열 생성

        //서버의 절대 경로 얻기
        String root_path = request.getSession().getServletContext().getRealPath("/");
        String attach_path = "/upload/";
        String rootPath = FileSystemView.getFileSystemView().getHomeDirectory().toString();
        String localPath = "C:\\project_my\\fileUpload\\";
        System.out.println("root_path" + root_path);
        System.out.println("rootPath" + rootPath);

        //위 경로의 폴더가 없으면 폴더 생성
        File file = new File(localPath);
        if(file.exists() == false) {
            file.mkdir();
        }

        // 파일 이름들을 iterator(=배열이나 그와 유사한 자료구조의 내부요소를 순회하는 객체)로 담음
        // iterator는 ArrayList, HashSet과 같은 컬렉션을 반복하는 데 사용할 수 있는 객체
        Iterator<String> iterator = mhsr.getFileNames();

        while(iterator.hasNext()) {
            //파일명으로 파일 리스트 꺼내오기(첨부판 파일 리스트 가져오기 entity.getMultipartFile 처럼)
            List<MultipartFile> list = mhsr.getFiles(iterator.next());

            //첨부파일 row 만큼 unityIdArr배열 생성
            String[] unityIdArr = new String[list.size()];
            System.out.println("list.size()" + list.size());

            // 고유값 생성
            String uuid = UUID.randomUUID().toString();
            System.out.println("uuid : " + uuid);

            /*for (int i=0; i<list.size(); i++) {
                unityIdArr[i] = uuid;
            }*/

            String[] fileIdArr = new String[list.size()];

            //파일 리스트 개수 만큼 리턴할 파일 리스트에 담아주고 생성
            int i = 0;
            for(MultipartFile mf : list) {
                if(mf.getSize() > 0) {
                    FileDto dto = new FileDto();
                    unityIdArr[i] = uuid;
                    fileIdArr[i] = UUID.randomUUID().toString();
                    dto.setUnityId(unityIdArr[i]);
                    dto.setFileId(fileIdArr[i]);
                    dto.setFileNm(mf.getName());
                    dto.setFileSize(mf.getSize());
                    dto.setFileOrginlNm(mf.getOriginalFilename());
                    dto.setFilePath(localPath);
                    fileList.add(dto);

                    file = new File(localPath + mf.getOriginalFilename());
                    mf.transferTo(file); // 파일 업로드 처리
                    i++;
                } else {
                    fileList = null;
                }
            }
        }
        return fileList;
    }
}
