package com.example.spring_my.dept.service;

import java.util.List;

public class DeptDto {

    // dto는 순수하게 데이터만 담고 있어야 하고 business layer를 몰라야 하기 때문에 entity로 변환하는 코드가 담겨서는 안 된다.
    // dto가 entity로 변환되는 곳은 controller이다.

    private List<DeptDto> rowDepts; // 하위데이터 담을 list
    private String highDeptCd = "";
    private String highDeptNm = "";
    private String rowDeptCd = "";
    private String rowDeptNm = "";


    // member부분
    private List<DeptDto> rowSanctns; // 하위데이터 담을 list
    private List<DeptDto> rowSingleSanctns;
    private List<?> mbrCdArr;
    private String deptCd = "";
    private String deptNm = "";
    private String mbrId = "";
    private String mbrCd = "";
    private String mbrNm = "";
    private String mbrRankNm = "";

    public String getHighDeptCd() {
        return highDeptCd;
    }

    public void setHighDeptCd(String highDeptCd) {
        this.highDeptCd = highDeptCd;
    }

    public String getHighDeptNm() {
        return highDeptNm;
    }

    public void setHighDeptNm(String highDeptNm) {
        this.highDeptNm = highDeptNm;
    }

    public String getRowDeptCd() {
        return rowDeptCd;
    }

    public void setRowDeptCd(String rowDeptCd) {
        this.rowDeptCd = rowDeptCd;
    }

    public String getRowDeptNm() {
        return rowDeptNm;
    }

    public void setRowDeptNm(String rowDeptNm) {
        this.rowDeptNm = rowDeptNm;
    }

    public String getDeptCd() {
        return deptCd;
    }

    public void setDeptCd(String deptCd) {
        this.deptCd = deptCd;
    }

    public String getDeptNm() {
        return deptNm;
    }

    public void setDeptNm(String deptNm) {
        this.deptNm = deptNm;
    }

    public List<DeptDto> getRowDepts() {
        return rowDepts;
    }

    public void setRowDepts(List<DeptDto> rowDepts) {
        this.rowDepts = rowDepts;
    }

    public String getMbrCd() {
        return mbrCd;
    }

    public void setMbrCd(String mbrCd) {
        this.mbrCd = mbrCd;
    }

    public String getMbrNm() {
        return mbrNm;
    }

    public void setMbrNm(String mbrNm) {
        this.mbrNm = mbrNm;
    }

    public String getMbrRankNm() {
        return mbrRankNm;
    }

    public void setMbrRankNm(String mbrRankNm) {
        this.mbrRankNm = mbrRankNm;
    }

    public List<DeptDto> getRowSanctns() {
        return rowSanctns;
    }

    public void setRowSanctns(List<DeptDto> rowSanctns) {
        this.rowSanctns = rowSanctns;
    }

    public List<DeptDto> getRowSingleSanctns() {
        return rowSingleSanctns;
    }

    public void setRowSingleSanctns(List<DeptDto> rowSingleSanctns) {
        this.rowSingleSanctns = rowSingleSanctns;
    }

    public String getMbrId() {
        return mbrId;
    }

    public void setMbrId(String mbrId) {
        this.mbrId = mbrId;
    }

    public List<?> getMbrCdArr() {
        return mbrCdArr;
    }

    public void setMbrCdArr(List<?> mbrCdArr) {
        this.mbrCdArr = mbrCdArr;
    }
}
