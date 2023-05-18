package com.kbstar.review;

import com.kbstar.dto.Review;
import com.kbstar.service.ReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class SelectTest {
    @Autowired
    ReviewService service;
    @Test
    void contextLoads() {
        try {
            List<Review> list = service.get();
            log.info(list.toString());

        } catch (Exception e) {
            e.printStackTrace();
            log.info("에러..");
        }
    }

}
