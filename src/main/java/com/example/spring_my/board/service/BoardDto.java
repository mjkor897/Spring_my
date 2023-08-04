package com.example.spring_my.board.service;

import lombok.AllArgsConstructor;
import org.apache.ibatis.type.Alias;

public class BoardDto {

    private String boardId = "";
    private String unityId = "";
    private String boardSj = "";
    private String boardCn = "";
    private String suserId = ""; // xml파일에 #{suserId} 이것만 해도 객체가 필요한듯
    private String rgsDt = "";
    private String rgsUserId = "";
    private String rgsUserNm = "";
    private String updDt = "";
    private String updUserId = "";
    private String boardWriter = "";
    private int viewCnt = 0;
    private String noticeYn = "";
    private int deleteYn = 0;


    // 검색 기능
    private int page = 1;             // 현재 페이지 번호
    private int recordSize = 10;       // 페이지당 출력할 데이터 개수
    private int pageSize = 10;         // 화면 하단에 출력할 페이지 사이즈
    private String keyword = "";       // 검색 키워드
    private String searchType = "";    // 검색 유형

    public String getBoardId() {
        return boardId;
    }

    public void setBoardId(String boardId) {
        this.boardId = boardId;
    }

    public String getUnityId() {
        return unityId;
    }

    public void setUnityId(String unityId) {
        this.unityId = unityId;
    }

    public String getBoardSj() {
        return boardSj;
    }

    public void setBoardSj(String boardSj) {
        this.boardSj = boardSj;
    }

    public String getBoardCn() {
        return boardCn;
    }

    public void setBoardCn(String boardCn) {
        this.boardCn = boardCn;
    }

    public String getRgsDt() {
        return rgsDt;
    }

    public void setRgsDt(String rgsDt) {
        this.rgsDt = rgsDt;
    }

    public String getRgsUserId() {
        return rgsUserId;
    }

    public void setRgsUserId(String rgsUserId) {
        this.rgsUserId = rgsUserId;
    }

    public String getUpdDt() {
        return updDt;
    }

    public void setUpdDt(String updDt) {
        this.updDt = updDt;
    }

    public String getUpdUserId() {
        return updUserId;
    }

    public void setUpdUserId(String updUserId) {
        this.updUserId = updUserId;
    }

    public String getBoardWriter() {
        return boardWriter;
    }

    public void setBoardWriter(String boardWriter) {
        this.boardWriter = boardWriter;
    }

    public int getViewCnt() {
        return viewCnt;
    }

    public void setViewCnt(int viewCnt) {
        this.viewCnt = viewCnt;
    }

    public String getNoticeYn() {
        return noticeYn;
    }

    public void setNoticeYn(String noticeYn) {
        this.noticeYn = noticeYn;
    }

    public int getDeleteYn() {
        return deleteYn;
    }

    public void setDeleteYn(int deleteYn) {
        this.deleteYn = deleteYn;
    }

    public String getSuserId() {
        return suserId;
    }

    public void setSuserId(String suserId) {
        this.suserId = suserId;
    }

    public String getRgsUserNm() {
        return rgsUserNm;
    }

    public void setRgsUserNm(String rgsUserNm) {
        this.rgsUserNm = rgsUserNm;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRecordSize() {
        return recordSize;
    }

    public void setRecordSize(int recordSize) {
        this.recordSize = recordSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }
}
