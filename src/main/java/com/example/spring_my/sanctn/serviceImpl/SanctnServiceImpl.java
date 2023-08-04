package com.example.spring_my.sanctn.serviceImpl;

import com.example.spring_my.sanctn.service.SanctnDto;
import com.example.spring_my.sanctn.service.SanctnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SanctnServiceImpl implements SanctnService {

    @Autowired
    private SanctnMapper sanctnMapper;

    @Override
    public List<?> list(SanctnDto entity) throws Exception {
        return sanctnMapper.list(entity);
    }

    @Override
    public SanctnDto view(SanctnDto entity) throws Exception {
        return sanctnMapper.view(entity);
    }

    @Override
    public List<?> selectSanctnUser(SanctnDto entity) throws Exception {
        return sanctnMapper.selectSanctnUser(entity);
    }

    @Override
    public List<?> selectSanctnCcUser(SanctnDto entity) throws Exception {
        return sanctnMapper.selectSanctnCcUser(entity);
    }

    @Override
    public List<?> selectSanctnList(SanctnDto entity) throws Exception {
        return sanctnMapper.selectSanctnList(entity);
    }

    @Override
    public List<?> selectSanctnCcList(SanctnDto entity) throws Exception {
        return sanctnMapper.selectSanctnCcList(entity);
    }

    @Override
    public List<?> getSanctnFileList(String unityId) throws Exception {
        return sanctnMapper.getSanctnFileList(unityId);
    }

    @Override
    public SanctnDto insert(SanctnDto entity) throws Exception {
        sanctnMapper.insertSanctn(entity);
        entity.setSanctnId(entity.getSanctnId());
        insertSanctnUserList(entity);
        return entity;
    }

    // 결재자, 참조자 INSERT
    public void insertSanctnUserList(SanctnDto entity) throws Exception {
        String[] sanctnMbrCdArr = entity.getSanctnMbrCdArr();
        String[] sanctnMbrNmArr = entity.getSanctnMbrNmArr();
        String[] sanctnMbrIdArr = entity.getSanctnMbrIdArr();
        String[] sanctnMbrRankNmArr = entity.getSanctnMbrRankNmArr();
        String[] ccMbrCdArr = entity.getCcMbrCdArr();
        String[] ccMbrNmArr = entity.getCcMbrNmArr();
        String[] ccMbrIdArr = entity.getCcMbrIdArr();
        String[] ccMbrRankNmArr = entity.getCcMbrRankNmArr();
        String[] sanctnUserSttusCdIdArr = entity.getSanctnUserSttusCdIdArr();
        String[] sanctnCcSttusCdIdArr = entity.getSanctnCcSttusCdIdArr();
        //String[] sanctnDtArr = entity.getSanctnDtArr();

        if(sanctnMbrCdArr != null) {
            for(int i=0; i<sanctnMbrCdArr.length; i++) {
                SanctnDto dto = new SanctnDto();
                dto.setSanctnId(entity.getSanctnId());
                dto.setSanctnMbrCd(sanctnMbrCdArr[i]);
                dto.setSanctnMbrNm(sanctnMbrNmArr[i]);
                dto.setSanctnMbrId(sanctnMbrIdArr[i]);
                dto.setSanctnMbrRankNm(sanctnMbrRankNmArr[i]);
                dto.setSanctnUserSttusCdId(sanctnUserSttusCdIdArr[i]);
                //dto.setSanctnDt(sanctnDtArr[i]);
                sanctnMapper.insertSanctnUser(dto);
            }
        }

        if(ccMbrCdArr != null) {
            for(int i=0; i<ccMbrCdArr.length; i++) {
                SanctnDto dto = new SanctnDto();
                dto.setSanctnId(entity.getSanctnId());
                dto.setCcMbrCd(ccMbrCdArr[i]);
                dto.setCcMbrNm(ccMbrNmArr[i]);
                dto.setCcMbrId(ccMbrIdArr[i]);
                dto.setCcMbrRankNm(ccMbrRankNmArr[i]);
                dto.setSanctnCcSttusCdId(sanctnCcSttusCdIdArr[i]);
                sanctnMapper.insertSanctnCcUser(dto);
            }
        }
    }//insertSanctnUserList end

    @Override
    public int sttusUpdate(SanctnDto entity) throws Exception {
        return sanctnMapper.sttusUpdate(entity);
    }

    @Override
    public int sttusDocUpdate(SanctnDto entity) throws Exception {

        // sanctnUserSttusCdId 가져오기
        entity.getSanctnUserSttusCdId();


        return sanctnMapper.sttusDocUpdate(entity);
    }
}
