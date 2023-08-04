package com.example.spring_my.sanctn.service;

import com.example.spring_my.dept.service.DeptDto;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class SanctnDto  extends DeptDto {

    private String psanctnId = "";            /* 파라미터 결재ID */
    private String sanctnId = "";            /* 결재ID */
    private String sanctnSttusCdId = "";     /* 결재 상태코드ID */
    private String sanctnDraftId = "";     /* 기안자ID */
    private String sanctnDraftNm = "";     /* 기안자NM */
    private String sanctnDraftRankNm = "";     /* 기안자 직위 */
    private String sanctnMbrId = "";         /* 결재사용자ID */
    private String sanctnMbrCd = "";         /* 결재사용자CD */
    private String sanctnMbrNm = "";         /* 결재사용자NM */
    private String sanctnMbrRankNm = "";     /* 결재사용자직위 */
    private String ccMbrId = "";         /* 참조사용자CD */
    private String ccMbrCd = "";         /* 참조사용자CD */
    private String ccMbrNm = "";         /* 참조사용자NM */
    private String ccMbrRankNm = "";     /* 참조사용자직위 */
    private String sanctnCcSttusCdId = "";     /* 참조상태코드 */
    private String sanctnUserSttusCdId = ""; /* 결재사용자 상태코드ID */
    private String sanctnDt = "";            /* 결재일시(결재자의) */
    private String sanctnDocNo = "";         /* 결재문서번호 */
    private String sanctnDocNm = "";         /* 결재문서이름 */
    private String sanctnSj = "";            /* 결재제목 */
    private String sanctnCn = "";            /* 결재내용 */
    private String rgsDt = "";               /* 기안일 */
    private String rgsUserId = "";           /* 기안자 */
    private String updDt = "";               /* 기안수정일 */
    private String updUserId = "";           /* 기안수정자 */
    private String unityId;
    private String suserId = "";            /* 세션ID */

    private MultipartFile referDocFile;  /* 참조문서 */

    private List<?> selectSanctnList; /* 결재자의 직원아이디 */

    // 배열
    private String[] sanctnMbrCdArr = null;
    private String[] sanctnMbrNmArr = null;
    private String[] sanctnMbrIdArr = null;
    private String[] sanctnMbrRankNmArr = null;
    private String[] ccMbrCdArr = null;
    private String[] ccMbrNmArr = null;
    private String[] ccMbrIdArr = null;
    private String[] ccMbrRankNmArr = null;
    private String[] sanctnUserSttusCdIdArr = null;
    private String[] sanctnDtArr = null;
    private String[] sanctnCcSttusCdIdArr = null;


    public String getPsanctnId() {
        return psanctnId;
    }

    public void setPsanctnId(String psanctnId) {
        this.psanctnId = psanctnId;
    }

    public String getSanctnId() {
        return sanctnId;
    }

    public void setSanctnId(String sanctnId) {
        this.sanctnId = sanctnId;
    }

    public String getSanctnSttusCdId() {
        return sanctnSttusCdId;
    }

    public void setSanctnSttusCdId(String sanctnSttusCdId) {
        this.sanctnSttusCdId = sanctnSttusCdId;
    }

    public String getSanctnMbrCd() {
        return sanctnMbrCd;
    }

    public void setSanctnMbrCd(String sanctnMbrCd) {
        this.sanctnMbrCd = sanctnMbrCd;
    }

    public String getSanctnMbrNm() {
        return sanctnMbrNm;
    }

    public void setSanctnMbrNm(String sanctnMbrNm) {
        this.sanctnMbrNm = sanctnMbrNm;
    }

    public String getSanctnMbrRankNm() {
        return sanctnMbrRankNm;
    }

    public void setSanctnMbrRankNm(String sanctnMbrRankNm) {
        this.sanctnMbrRankNm = sanctnMbrRankNm;
    }

    public String getCcMbrCd() {
        return ccMbrCd;
    }

    public void setCcMbrCd(String ccMbrCd) {
        this.ccMbrCd = ccMbrCd;
    }

    public String getCcMbrNm() {
        return ccMbrNm;
    }

    public void setCcMbrNm(String ccMbrNm) {
        this.ccMbrNm = ccMbrNm;
    }

    public String getCcMbrRankNm() {
        return ccMbrRankNm;
    }

    public void setCcMbrRankNm(String ccMbrRankNm) {
        this.ccMbrRankNm = ccMbrRankNm;
    }

    public String getSanctnUserSttusCdId() {
        return sanctnUserSttusCdId;
    }

    public void setSanctnUserSttusCdId(String sanctnUserSttusCdId) {
        this.sanctnUserSttusCdId = sanctnUserSttusCdId;
    }

    public String getSanctnDt() {
        return sanctnDt;
    }

    public void setSanctnDt(String sanctnDt) {
        this.sanctnDt = sanctnDt;
    }

    public String getSanctnDocNo() {
        return sanctnDocNo;
    }

    public void setSanctnDocNo(String sanctnDocNo) {
        this.sanctnDocNo = sanctnDocNo;
    }

    public String getSanctnDocNm() {
        return sanctnDocNm;
    }

    public void setSanctnDocNm(String sanctnDocNm) {
        this.sanctnDocNm = sanctnDocNm;
    }

    public String getSanctnSj() {
        return sanctnSj;
    }

    public void setSanctnSj(String sanctnSj) {
        this.sanctnSj = sanctnSj;
    }

    public String getSanctnCn() {
        return sanctnCn;
    }

    public void setSanctnCn(String sanctnCn) {
        this.sanctnCn = sanctnCn;
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

    public String[] getSanctnMbrCdArr() {
        return sanctnMbrCdArr;
    }

    public void setSanctnMbrCdArr(String[] sanctnMbrCdArr) {
        this.sanctnMbrCdArr = sanctnMbrCdArr;
    }

    public String[] getSanctnMbrNmArr() {
        return sanctnMbrNmArr;
    }

    public void setSanctnMbrNmArr(String[] sanctnMbrNmArr) {
        this.sanctnMbrNmArr = sanctnMbrNmArr;
    }

    public String[] getSanctnMbrRankNmArr() {
        return sanctnMbrRankNmArr;
    }

    public void setSanctnMbrRankNmArr(String[] sanctnMbrRankNmArr) {
        this.sanctnMbrRankNmArr = sanctnMbrRankNmArr;
    }

    public String[] getCcMbrCdArr() {
        return ccMbrCdArr;
    }

    public void setCcMbrCdArr(String[] ccMbrCdArr) {
        this.ccMbrCdArr = ccMbrCdArr;
    }

    public String[] getCcMbrNmArr() {
        return ccMbrNmArr;
    }

    public void setCcMbrNmArr(String[] ccMbrNmArr) {
        this.ccMbrNmArr = ccMbrNmArr;
    }

    public String[] getCcMbrRankNmArr() {
        return ccMbrRankNmArr;
    }

    public void setCcMbrRankNmArr(String[] ccMbrRankNmArr) {
        this.ccMbrRankNmArr = ccMbrRankNmArr;
    }

    public String[] getSanctnUserSttusCdIdArr() {
        return sanctnUserSttusCdIdArr;
    }

    public void setSanctnUserSttusCdIdArr(String[] sanctnUserSttusCdIdArr) {
        this.sanctnUserSttusCdIdArr = sanctnUserSttusCdIdArr;
    }

    public String[] getSanctnDtArr() {
        return sanctnDtArr;
    }

    public void setSanctnDtArr(String[] sanctnDtArr) {
        this.sanctnDtArr = sanctnDtArr;
    }

    public MultipartFile getReferDocFile() {
        return referDocFile;
    }

    public void setReferDocFile(MultipartFile referDocFile) {
        this.referDocFile = referDocFile;
    }

    public String getUnityId() {
        return unityId;
    }

    public void setUnityId(String unityId) {
        this.unityId = unityId;
    }

    public String getSanctnMbrId() {
        return sanctnMbrId;
    }

    public void setSanctnMbrId(String sanctnMbrId) {
        this.sanctnMbrId = sanctnMbrId;
    }

    public String getCcMbrId() {
        return ccMbrId;
    }

    public void setCcMbrId(String ccMbrId) {
        this.ccMbrId = ccMbrId;
    }

    public String getSanctnDraftId() {
        return sanctnDraftId;
    }

    public void setSanctnDraftId(String sanctnDraftId) {
        this.sanctnDraftId = sanctnDraftId;
    }

    public String getSanctnDraftNm() {
        return sanctnDraftNm;
    }

    public void setSanctnDraftNm(String sanctnDraftNm) {
        this.sanctnDraftNm = sanctnDraftNm;
    }

    public List<?> getSelectSanctnList() {
        return selectSanctnList;
    }

    public void setSelectSanctnList(List<?> selectSanctnList) {
        this.selectSanctnList = selectSanctnList;
    }

    public String getSuserId() {
        return suserId;
    }

    public void setSuserId(String suserId) {
        this.suserId = suserId;
    }

    public String[] getSanctnMbrIdArr() {
        return sanctnMbrIdArr;
    }

    public void setSanctnMbrIdArr(String[] sanctnMbrIdArr) {
        this.sanctnMbrIdArr = sanctnMbrIdArr;
    }

    public String[] getCcMbrIdArr() {
        return ccMbrIdArr;
    }

    public void setCcMbrIdArr(String[] ccMbrIdArr) {
        this.ccMbrIdArr = ccMbrIdArr;
    }

    public String getSanctnCcSttusCdId() {
        return sanctnCcSttusCdId;
    }

    public void setSanctnCcSttusCdId(String sanctnCcSttusCdId) {
        this.sanctnCcSttusCdId = sanctnCcSttusCdId;
    }

    public String getSanctnDraftRankNm() {
        return sanctnDraftRankNm;
    }

    public void setSanctnDraftRankNm(String sanctnDraftRankNm) {
        this.sanctnDraftRankNm = sanctnDraftRankNm;
    }

    public String[] getSanctnCcSttusCdIdArr() {
        return sanctnCcSttusCdIdArr;
    }

    public void setSanctnCcSttusCdIdArr(String[] sanctnCcSttusCdIdArr) {
        this.sanctnCcSttusCdIdArr = sanctnCcSttusCdIdArr;
    }
}
