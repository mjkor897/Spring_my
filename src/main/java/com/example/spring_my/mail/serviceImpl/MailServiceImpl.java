package com.example.spring_my.mail.serviceImpl;

import com.example.spring_my.mail.service.MailDto;
import com.example.spring_my.mail.service.MailService;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.swing.filechooser.FileSystemView;


@Service
public class MailServiceImpl implements MailService {
    @Autowired
    private JavaMailSenderImpl javaMailSender;
    @Override
    public void sendMail(MailDto entity) throws Exception {

        // MimeMessage : html 으로 작성된 것들을 전송하거나, 파일을 전송 할 때 사용
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();

        try {
            // MIME 메시지를 만들기 위한 클래스
            // HTML 레이아웃에서 이미지, 일반적인 메일 첨부 파일 및 텍스트 내용을 지원
            MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8"); // use multipart (true)

            String email = "cat5531@naver.com";
            entity.setMailSendUserId(email);

            // 메일 정보 세팅
            mimeMessageHelper.setSubject(entity.getMailSj());
            mimeMessageHelper.setText(entity.getMailCn());
            mimeMessageHelper.setFrom(new InternetAddress(entity.getMailSendUserId())); // 보내는사람 -> 내 naver 이메일로 해야함
            //mimeMessageHelper.setTo(new InternetAddress("alwnalwn897@naver.com")); // 받는사람

            int mailUserIdLen = entity.getMailUserIdList().toArray().length;
            InternetAddress[] toAddr = new InternetAddress[mailUserIdLen];

            for(int i=0; i<mailUserIdLen; i++) {
                toAddr[i] = new InternetAddress(entity.getMailUserIdList().get(i).toString());
            }
            System.out.println("MailUserIdList : "+ entity.getMailUserIdList().toString());
            mimeMessageHelper.setTo(toAddr);

            String rootPath = FileSystemView.getFileSystemView().getHomeDirectory().toString();
            String basePath = rootPath + "/" + "mail.do";

            // 다중 첨부파일 설정 (cc:https://velog.io/@tjddnths0223/SpringBoot-%EB%A9%94%EC%9D%BC%EC%B2%A8%EB%B6%80%ED%8C%8C%EC%9D%BCAPI)
            if(!CollectionUtils.isEmpty(entity.getMultipartFile())) { // multipartFile null 처리
                for(MultipartFile multipartFile: entity.getMultipartFile()) {
                    //String filePath = basePath + "/" + multipartFile.getOriginalFilename();
                    String fileOrginlNm = multipartFile.getOriginalFilename();
                    mimeMessageHelper.addAttachment(fileOrginlNm, multipartFile); // fileOrginlNm의 이름으로 multipartFile을 보내겠다는 뜻?
                }
            }

            System.out.println("MailSendUserId : " + entity.getMailSendUserId());
            System.out.println("MailUserId : " + entity.getMailUserId());
            System.out.println("MailSj : " + entity.getMailSj());
            System.out.println("MailCn : " + entity.getMailCn());
            System.out.println("MultipartFile : " + entity.getMultipartFile());
            System.out.println("basePath : " + basePath);

            // 메일전송
            javaMailSender.send(mimeMessage);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
