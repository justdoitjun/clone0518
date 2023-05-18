package com.kbstar.review;

import com.kbstar.dto.Review;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@Slf4j
@SpringBootTest
class InsertTest {

    @Autowired
    ReviewService service;
    @Test
    void contextLoads() {
        Date rdate = new Date();
        Review obj = new Review(1,"강감찬",rdate,"맛있어요");
        try {
            service.register(obj);
            log.info("등록 정상..");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
