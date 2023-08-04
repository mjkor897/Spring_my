package com.example.spring_my.mail.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class MailDto {
    private String mailSendUserId = ""; /* 메일발신자아이디 */
    private String mailSendUserNm = ""; /* 메일발신자명 */
    private String mailSj = ""; /* 메일제목 */
    private String mailCn = ""; /* 메일내용 */
    private String mailUserId = ""; /* 메일수신자아이디 */
    private String mailSendDt = ""; /* 메일발신일자 */
    private String mailSendMail = ""; /* 메일발신자주소 */

    // 테스트
    private List<?> mailUserIdList;

    public List<?> getMailUserIdList() {
        return mailUserIdList;
    }

    public void setMailUserIdList(List<?> mailUserIdList) {
        this.mailUserIdList = mailUserIdList;
    }

    private List<MultipartFile> multipartFile; /* 첨부파일 list */
    public List<MultipartFile> getMultipartFile() {
        return multipartFile;
    }
    public void setMultipartFile(List<MultipartFile> multipartFile) {
        this.multipartFile = multipartFile;
    }

    public String getMailSendUserId() {
        return mailSendUserId;
    }

    public void setMailSendUserId(String mailSendUserId) {
        this.mailSendUserId = mailSendUserId;
    }

    public String getMailSendUserNm() {
        return mailSendUserNm;
    }

    public void setMailSendUserNm(String mailSendUserNm) {
        this.mailSendUserNm = mailSendUserNm;
    }

    public String getMailSj() {
        return mailSj;
    }

    public void setMailSj(String mailSj) {
        this.mailSj = mailSj;
    }

    public String getMailCn() {
        return mailCn;
    }

    public void setMailCn(String mailCn) {
        this.mailCn = mailCn;
    }

    public String getMailUserId() {
        return mailUserId;
    }

    public void setMailUserId(String mailUserId) {
        this.mailUserId = mailUserId;
    }

    public String getMailSendDt() {
        return mailSendDt;
    }

    public void setMailSendDt(String mailSendDt) {
        this.mailSendDt = mailSendDt;
    }

    public String getMailSendMail() {
        return mailSendMail;
    }

    public void setMailSendMail(String mailSendMail) {
        this.mailSendMail = mailSendMail;
    }
}
