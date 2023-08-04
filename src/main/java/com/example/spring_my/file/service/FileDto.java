package com.example.spring_my.file.service;

public class FileDto {

    private String unityId = "";

    private String[] unityIdArr = null;
    private String fileId; /* 파일아이디 */
    private String fileNm = ""; /* 파일명 */
    private String filePath = ""; /* 파일경로 */
    private String fileOrginlNm = ""; /* 파일원본명 */
    private long fileSize; /* 파일크기 */
    private String fileErrCn = ""; /* 파일오류내용 */


    public String getUnityId() {
        return unityId;
    }

    public void setUnityId(String unityId) {
        this.unityId = unityId;
    }

    public String[] getUnityIdArr() {
        return unityIdArr;
    }

    public void setUnityIdArr(String[] unityIdArr) {
        this.unityIdArr = unityIdArr;
    }

    public String getFileId() {
        return fileId;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    public String getFileNm() {
        return fileNm;
    }

    public void setFileNm(String fileNm) {
        this.fileNm = fileNm;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileOrginlNm() {
        return fileOrginlNm;
    }

    public void setFileOrginlNm(String fileOrginlNm) {
        this.fileOrginlNm = fileOrginlNm;
    }

    public long getFileSize() {
        return fileSize;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }

    public String getFileErrCn() {
        return fileErrCn;
    }

    public void setFileErrCn(String fileErrCn) {
        this.fileErrCn = fileErrCn;
    }


}
