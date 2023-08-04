package com.example.spring_my.stats.web;

import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.stats.service.StatsDto;
import com.example.spring_my.stats.service.StatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/mjcompany.co.kr/*")
public class StatsController {

    @Autowired
    private StatsService statsService;

    @RequestMapping("/stats.do")
    public String stats(StatsDto entity, ModelMap model) {

            StatsDto dto = new StatsDto();

        try {
            // 쿼리 결과값이 정수이고 mapper.java에 타입을 String이나 int로 하면 casting오류가 뜸. StatsDto로 하면 돌아감. 이유는 모르겠음
            entity = statsService.totalMbr(entity); // 현재인원
            dto.setTotalMbr(entity.getTotalMbr());
            entity = statsService.avgMbr(entity); // 평균연령
            dto.setAvgMbr(entity.getAvgMbr());
            entity = statsService.retireMbr(entity); // 퇴사율
            dto.setRetireMbr(entity.getRetireMbr());
            entity = statsService.yosMbr(entity); // 근속년수
            dto.setYosMbr(entity.getYosMbr());

            entity = statsService.cntMbr(entity); // 직원별현황 cnt
            dto.setCntBeJung(entity.getCntBeJung());
            dto.setCntJung(entity.getCntJung());
            dto.setCntEtc(entity.getCntEtc());

            entity = statsService.cntTrl(entity); // 재직현황 cnt
            dto.setCntTenure(entity.getCntTenure());
            dto.setCntRetire(entity.getCntRetire());
            dto.setCntLoa(entity.getCntLoa());

            StatsDto cntBgnde = statsService.cntBgnde(entity); // 연도별 입사자 cnt
            StatsDto cntEnd = statsService.cntEnd(entity); // 연도별 퇴사자 cnt

            entity = statsService.cntGender(entity); // 남녀성비 cnt
            dto.setCntWoman(entity.getCntWoman());
            dto.setCntMan(entity.getCntMan());

            StatsDto cntRetire = statsService.cntRetire(entity); // 퇴직사유 cnt
            StatsDto cntRank = statsService.cntRank(entity); // 직위별현황 cnt

            // 'dto =' 으로 담아야 나옴 / 'dto =' 을 중복으로 쓰면 그 전에 담은 데이터가 초기화됨
            model.addAttribute("statsView", dto);
            model.addAttribute("cntBgnde", cntBgnde);
            model.addAttribute("cntEnd", cntEnd);
            model.addAttribute("cntRetire", cntRetire);
            model.addAttribute("cntRank", cntRank);
        } catch (Exception e) {
            System.out.println(" 에러! : " + e);
        }
        return "stats/stats";
    }


}
